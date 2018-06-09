library(rpart)
library(ggplot2)
set.seed(123)

x1 <- runif(1000)
x2 <- runif(1000)

y <- ifelse(sqrt((x1-0.5)^2 + (x2-0.5)^2) <= 0.25, 'Y', 'N')

full_dat <- data_frame(x1, x2, y)

plot(x1, x2, col = 1 + as.numeric(y == 'Y'))

grid_data <- expand.grid(x1 = seq(0,1,.005),
                        x2 = seq(0,1,.005))

final_class_one_tree <- predict(rpart(y ~ ., data = full_dat),
                                newdata = grid_data,
                                type = 'class')

# rpart(y ~ ., data = full_dat)

boot_pred <- function(data = full_dat, 
                      pred_data = grid_data){
  boot_mod <- rpart(y ~ ., data = data[sample(nrow(data), replace = T),])
  
  predict(boot_mod, newdata = pred_data, type = 'class')
}

iters <- 1000
mat_preds <- do.call('cbind', 
                     lapply(1:iters, FUN = function(i) boot_pred()))


final_class <- apply(mat_preds, 1, FUN = function(class){
  names(sort(table(class), decreasing = TRUE))[1]
})

grid_data %>%
  mutate(class_pred = final_class_one_tree) %>%
  ggplot(aes(x1, x2, fill = class_pred))+
  geom_raster()+
  geom_point(data = full_dat, 
             aes(x = x1, y = x2,
                 colour = y), inherit.aes = FALSE)+
  scale_colour_brewer(palette = 'Set1')+
  ggtitle('Results using voting from one decision tree')

grid_data %>%
  mutate(class_pred = final_class) %>%
  ggplot(aes(x1, x2, fill = class_pred))+
  geom_raster()+
  geom_point(data = full_dat, 
             aes(x = x1, y = x2,
                 colour = y), inherit.aes = FALSE)+
  scale_colour_brewer(palette = 'Set1')+
  ggtitle('Results using voting from bootstrapped decision trees')


# let's try and do some boosting using logistic regressions

full_dat2 <- full_dat

full_dat2$y <- as.numeric(full_dat$y == 'Y')

f1 <- glm(y ~ x1 * x2 + I(x1 ^ 2)+I(x2^2), 
          data = full_dat2, family = 'binomial')

f2 <- update(f1, .~., weights = abs(resid(f1)))




