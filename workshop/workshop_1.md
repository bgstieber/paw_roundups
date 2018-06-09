# The Deadly Dozen: The Top 12 Analytics Mistakes and the Techniques to Defeat Them

_Slides are available for this workshop. Slides cover most of the detail discussed in the workshop. These notes are not an exhaustive summary of the workshop._

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
     - Ensemble methods can help here
  4. ask the wrong question
     - asking the easy question instead of the one that gets close to the answer
     - vague real-world question vs. crisp technical question
  5. listen (only) to the data
     - not trusting expert opinion
     - Opportunities for learning when model disagrees with domain experts
         + Different types of wisdom
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


## Lack Data

Need labeled cases for best gains to classify or estimate; clustering is much less effective. Interesting known cases may be exceedingly rare.

Success of a project can be dependent on availability of good training data.

Example of a credit card company: didn't have data on risky credit applicants. Invested and estimated risk by giving risky applicants credit. Estimated risk using what was known at start. They made a _large investment_ to get and create _relevant data_.

## Focus on Training

  - Out-of-sample results matter
      + otherwise, just use a lookup table
  - Day vs. week training for neural networks
      + Memorized the training data
      + [bias vs. variance tradeoff](https://medium.com/mlreview/making-sense-of-the-bias-variance-trade-off-in-deep-reinforcement-learning-79cf1e83d565)
  - Resampling methods can defend against over-fitting
      + Training vs. validation sets
          * Set aside the validation set __before__ any statistical analysis is done. __Very important__ to blind yourself
      + V-fold cross validation
          * Really good way to evaluate how your models are doing
      + Bootstrapping
  - Inductive vs. deductive modeling
      + data science is inductive modeling, operating under the assumption of smoothness (trying to predict/generalize the whole from a set of examples)
          * two similar inputs should result in similar output
      + Likened it to trying to learn algebra using answers to odd-numbered questions and answers in a text book

## Rely on One Technique

  - for the best work, you need a whole toolkit
  - always compare results to a conventional method
      + does this heavy ML method beat logistic regression?
      + the different techniques have different purposes (regression is better than decision trees at some things and vice versa), which methods perform better give you insight to some of the "hidden" complexities in the data/problem
  - Unusual for modeling technique to make a big technique, more important to think about feature creation, complexity control, etc.
  - use a handful of good tools and multiple methods and compare amongst them
  - Consensus vs. contributory methods
      + consensus: don't need data after fitting model (e.g. regression)
      + contributory: need data after fitting model (e.g. kNN)

"The stupid models can't be fooled."

Ensemble methods are a great way to get around the problem of relying on just one technique. Fit multiple ML models and pool them together.

  - this is how the job title classification algorithm works

## Ensemble Methods

"And in a multitude of counselors there is safety."

  - Combining models: bundling, bagging, boosting
  - Generalization: diverge & merge
      + group of models is the board of directors, rather than just one president
  - Bagging - bootstrap aggregating
      + create K boostrap replicates of dataset, fit model to each of the replicates, average the predictions of the K models
  - Boosting - get better at predicting the hard cases
      + add weight for poorly predicted observations, downweight well-predicted observations
      + keep each classifier (resulting in a sequence of classifiers), and give most of the weight to the earlier classifiers
      + taking for granted the things you get right, and pay more attention to what you're getting wrong
  - 

## Ask the Wrong Question

  - Project goal: need to aim at the right target
  - Model goal: get the computer to "feel" like you do
      + ask the computer to do what's most helpful to you, not what's easiest for the computer

Example: fraud detection for international phone calls

Typical project would probably be a classification model. Instead, they looked at normal behavior for each account and flagged outliers. Basically anomaly detection. 

What project should you choose (look at cost vs. ROI)

  - time required, disruption effect, data availability and quality 

What criteria should you optimize?

  - Squared error is convenient, but might not be for client
  - Lift charts are great, but don't optimize AUC
  - May need a custom metric
  - May require a global search algorithm
      + lots of ways to optimize a function
          * linear programming, grid search, gradient descent, simulated annealing, nelder-mead
      + global r^d optimization when probes are expensive (GROPE)
          * class of problems where goal is to get to the answer with fewest probes (function evaluations)

Most model fitting relies on the same objective function (minimizing squared error). Does minimizing this metric have merit for the problem you're trying to solve?

  - stock market example: predicted move from $10 to $11, actually got $14
      + Model feels worse about this error than if it had actually gotten $9.

AUC is looking across the entire predictive set. Isn't there a better cutoff point to look at? What part of the lift curve are you interested in?

Classification, generally treats false dismissal and false positive as equally bad, this is almost always not true
  - Cost of erroneous fire alarm vs. missing a fire
  - Cost of misdiagnosing vs. not diagnosing

Lifts and Gain charts are useful

## Mistake to Listen Only to the Data

  - are the comparisons we're making fair?
      + comparing SAT scores for states that have schools that accept ACT instead (e.g. midwestern states have self-selection issues, top students want to get out of midwestern states, so need to take SAT to go to coastal schools)
      + comparing whole populations of some states versus of selection of populations for other states
  - If given the chance, the computer will cheat and find the easiest solution
  - Try to incoporate outside information and scrutinize the data you have

## Mistake to Accept Leaks from the Future

  - This is why the historical data warehouse is an important and will continue to be an important

## Mistake to Discount Pesky Cases

  - Best phrase in research isn't "Aha!" but "That's odd"
      + And then follow up on these oddities!
  - Inconsistencies in data may uncover problems with the data supply infrastructure and/or reveal a larger business problem

## Mistake to Extrapolate (and always trust those extrapolations!)

  - cat being afraid of dress shoes
      + tendency to learn and trust from our first few experiences
  - Curse of Dimensionality
  - Evolutionary Paradigm
      + Don't fall in love with your models
      + Mistake to try too hard to get a model to "like" your feature

## Mistake to Answer Every Inquiry

"Don't know" is a useful model output state

Uncertainty is an important thing to report along with predicted values

[CADE](https://epubs.siam.org/doi/pdf/10.1137/1.9781611973440.67) for outlier detection

## Mistake to Cherry-Pick Results

  - You got an unlikely response, should it be trusted or what is it actually just by random chance?

## Target Shuffling

_I think a deeper analysis and literature review of this method is warranted. How does this compare to bootstrapping?_

  - Seems (to me) like a large-scale rank-sum test
  - See the [whitepaper](https://www.elderresearch.com/target-shuffling?hsCtaTracking=287a28ff-837e-45ee-9270-d674f9395d8e%7C0d65515f-b012-49dd-8bf9-af2a82e178b3)
  - Allows you to say what % chance the results you've _found_ are real

## Mistake to Believe the Best Model

  - Interpretability not always necessary
      + Model can be useful without being "correct" or explanatory
      + Humans try to make sense out of anything (how can both a positive _and_ negative correlation on same XY make sense?)

# How to Succeed

PATH:

  - Persistence - attack repeatedly and from different angles
  - Attitude - stay positive
  - Teamwork - must have cooperation and collaboration
  - Humility - learning from others require vulnerability and being okay with saying "I don't know"