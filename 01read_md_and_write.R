## simple utility function to read all md files in a folder then
## concatenate these files and write the concatenated file as an md
## finally, render this md as html
read_and_write_md <- function(path = ".", 
                              md_file = "full_markdown.md",
                              html_file = "full_markdown.html"){
  
  # find all files with .md extension
  files_in_dir <- dir(path = path)
  
  all_mds <- 
    files_in_dir[grepl(pattern = ".md", x = files_in_dir, fixed = TRUE)]
  
  # read each md file, then concatenate
  # for each md file, we insert a blank line before and after the text
  mds_concat <- do.call('c', 
                        sapply(all_mds, 
                               FUN = function(m) 
                                 c("", readLines(m), "")))
  
  # write file as .md
  writeLines(mds_concat, file.path(path, md_file))
  # render .md file to .html
  rmarkdown::render(input = file.path(path, md_file),
                    output_format = 'html_document',
                    output_file = file.path(path, html_file))
}

# read_and_write_md(md_file = "day2_concat.md",
#                   html_file = "day2_concat.html")
