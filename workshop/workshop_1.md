# The Deadly Dozen: The Top 12 Analytics Mistakes and the Techniques to Defeat Them

## John Elder - Founder & Chair - Elder Research

Deadly dozen mistakes

  1. lack data
     - lacking labeled data
     - not knowing target variable
  2. focus on training
     - validation, out-of-sample performance is important
  3. rely on one technique
     - to a little boy with a hammer, everything is a nail
     - every technique has weaknesses
  4. ask the wrong question
     - asking the easy question instead of the one that gets close to the answer
     - vague real-world question vs. crisp technical question
  5. listen (only) to the data
     - not trusting expert opinion
  6. accept information/data leaks from the future
     - allowing "future" data to be involved in the modeling process
     - was that data actually available for the time period you're interested in predicting/modeling?
     - This mistake can be (somewhat) mitigated using WFAA's historical data warehouse
  7. discount pesky cases
     - don't just throw data away, think about why that data is pesky
  8. extrapolate
     - don't go beyond the boundaries of what's available
  9. answer every inquiry
     - model is only qualified for a certain problem type
     - not qualified for asking new questions of it
         + may be completely outside of domain of expertise
  10. sample casually
  11. cherry-pick results
     - what was involved in getting to a significant result
     - [forking paths](https://en.wikipedia.org/wiki/The_Garden_of_Forking_Paths)
  12. believe the best model
    
90% of projects were successful, but only about 2/3 of models were actually utilized. Why the low adoption rate? 

Analytics is not just in the business of model building, but also of change management. Risky to make changes or switch the business based on model suggestions. 

Investing

  - Index is always better than timing or subset, so a strategy has a high hurdle to beat
  - Vanguard's 3 questions for strategy:
      + what is its rationale, where do they get their edge
      + empirical evidence
      + implementation results
  - S.M.A.R.T. Beta example

Sensible rationale

  - data snooping bias
      + are you finding spurious correlations?
      + was strategy preplanned before back-testing
      + does it have a reasonable explanation (i.e. passing sniff test)
  - Redundant theme
      + is it derived from a strategy in the literature

Empirical support - how susceptible are your findings to being broken?

  - look-ahead bias
      + was data available available at trading time?
  - time-period bias
      + why start and stop when it did?
      + how sensitive are the results to different periods?
  - Overconfidence and confirmation bias
      + has it been vetted?
  - Selection (multiple testing) bias
      + forking paths
  - Overfitting bias
      + how was strategy constructed to avoid having too many parameters that could lead to the risk of overfitting?

Implementation testing

  - representativeness bias
  - implementation costs

__Really important__: SMART beta - used components from _current_ securities. Information leak from the future. Using only _current_ securities excludes companies that went bankrupt. __Survivor bias.__ Data coverage today is (almost) always going to be better than what it was like yesterday.

Always be cognizant of the look-ahead problem.

