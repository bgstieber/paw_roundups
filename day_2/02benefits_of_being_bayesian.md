# The Benefits of Being Bayesian: How Multi-Level Models Enable More Granular Insights

## Curt Bergmann - Senior Data Scientist - Elicit

_This talk was at the end of the second day._

[geek nerd suit](http://geeknerdsuit.com/)

[statistical rethinking: a bayesian course with examples in R and STAN](https://xcelab.net/rm/statistical-rethinking/)

[data analysis using regression and multilevel/hierarchical models](http://www.stat.columbia.edu/~gelman/arm/) (I want to read this after finishing BDA3)

## Key Takeaways

  - Regression might perform poorly
      + Without accounting for hierarchical structure and prior information
  - Bayesian methods aren't magic
      + It's just specifying probability distributions and their parameters
  - Prior information can improve regression
      + Duh
  - Hierarchy can be a part of that prior
      + Duh

Implementing a Bayesian model in STAN is not that difficult as long as you have a well-thought-out and well-formulated model. 

I think this is an interesting area for statistical modeling, and something we should think about implementing at WFAA. How could the business use them?

## Rough Outline of Talk

What are granular insights?

How much to bid for search terms (e.g. "Trek" for a bike store)

Max Bid = Average Conversation Rate X Margin

Modeling proportions for conversion rates for new bike brands using prior information from previous conversation rates of existing bike brands.

P(Conversation Rate | Date) ~ Prior X Likelihood

Prior - what is our existing knowledge of this type of problem / data

Media mix models using multi-level modeling



