# Predictive Analytics World Conference Wrapup

## Brad Stieber

## What am I Excited About

  - WFAA is probably above the median in terms of its organizational analytics capabilities
      * Excellent data sources and structure, solid technical skills, solid technical support system
          + Having a data warehouse, and predictive models embedded in business processes (i.e. buy-in) is more than many companies have
            * Case in point: it took Northwestern Mutual 3.5 years (!!) to operationalize a model
      * Room for growth: business and decision-making process understanding
  - More opportunities to leverage machine learning in the business
      * I think the annual campaign is a good place to start, but is it needed/wanted by the business
  - Getting better at understanding business problems and decision-making processes
  - Understanding the BI / Analytics / Data Science divide a bit more
      * Based on what I was hearing at this conference, it seems like a fair bit of what Analytics does falls under the BI umbrella
  - Project management and project lifecycle planning
  - Acronyms! (PAW, CRISPDM, DELTA, PATH)

## Day 1 - How to help analytics be actionable and acted on

Most of the sessions I attended on day 1 had something to do with operationalizing analytics or delivering business value with analytics. All of the speakers related to this topic admitted how hard it is to make analytics _actionable_ and _acted on_. 

Probably the most important idea that was repeated in a few different talks was about getting business users to talk openly about the problem they are trying to solve. Rather than trying to run with a problem described as "tell us some insights about X", analysts should engage with the stakeholder to understand what part of their decision-making process they're trying to improve. 

This relates to a concept describe as the "data-first fallacy":

  - Issues with the "data-first" fallacy
      + "data first" - data scientists drive decisions in modeling / analytics project
      + Results in interesting model, but not models that will add business value
      + Make sure the analytic will be actionable __before you build it__

The successful implementation of an analytical project usually involved:

  - Buy-in from stakeholders
  - Collaboration with others outside of the data team
  - Starting with a business-decision in mind
      + Successful projects _usually_ did not start with trying to analyze a question framed as "what are some insights about X"
      + Successful projects would start with understanding some decision business users make frequently, and trying to pinpoint factors leading to that decision that could be automated / optimized / improved through analytics
  - Framing the solution in terms of business value
      + Rather than evaluating a model based on statistics (fit, errors, etc), it _should_ be evaluated and messaged in terms of the value it produces
          * These value statements can be generated using simulations or experiments

There was also a brief discussion in one of the talks about the difference between Data Analytics and Data Science. Sometimes these conversations devolve into something useless, but I found the speaker's opinion to be productive. 

Analytics

__output__: insights
__goal__: inform the actor
__focus__: the "what", what can we learn about X?
__positioned__: in trenches with senior leadership, advising strategy and tactics

Data Science

__output__: decisions
__goal__: be the actor
__focus__: the "how", how can we learn to do X?
__positioned__: still solicit feedback from senior leadership, but exists with a bit more distance from them

## Day 2 - How to think carefully about project management and delivering results

I attended a few more applied talks on day 2 (NLP at Barclays, readiness prediction at Caterpillar, and show/website similarity measurement at Viacom). It was interesting to listen to these talks and observe the project lifecycle for some advanced analytics projects.

In addition to these sessions, there was also a great panel discussion on operationalizing machine learning at an organization. There were some common themes between the panel discussions and the applied talks.

While the first day discussed factors associated with asking business users the right questions as an analytics project was developed, the second day was a little more focused on how a project lifecycle might look once the business questions are known and the decision processes are modeled and analyzed.

Common themes:

  1. Knowledge management and documentation
  2. Invest time and resources upfront for project management and planning
     - The challenges in shipping a model to production should not "come as a surprise" at the end of an analytics/ML project.
     - Learn by observation and not by experience (IMO experiential learning still has a place in analytics)
  3. Proof-of-concepts and being pseudo-agile 
     - Treat ML and analytics projects like software development
         * At WFAA we probably don't have resources to implement the amount of infrastructure some other companies have, but perhaps we can investigate project management a bit more
         * We already have some ideas on how projects can be structured (BRAD WILL ADD KANBAN LINK WHEN ACCESS TO WIFI IS RESTORED), but we have yet to really implement them.
  4. Data, data, data
     - Integrated data supply chain (i.e. make it easy to get the data needed to re-train the model and don't treat the modeling exercise as a one-off)
  5. Investigate your organization's barriers to analytical deployment
     - not built with customer in mind, not scalable, no user acquisition/training/retention plan, not integrated into business process
  6. Perfect is the enemy of good
     - A 60-40 model beats a 50-50 coin flip, even on crappy data
          * what are your users asking for?
     - how is success measured? how can you leverage ML/analytics to be incrementally more successful?

Highlights from a few selected talks

__Predicting Readiness to Purchase - Caterpillar__

Key takeaways:

  - Data accuracy is vital
    + They spent _a lot_ of time getting the data into shape 
      * for WFAA, I don't think this is as big of an issue, since our "customer" data tends to be fairly well-linked
        - feature engineering is where we spend more of our time
  - Don't fall in love with one model and don't rely on one model to answer all of your questions
  - It's a journey
    + it took them 6-9 months to build a production-ready model

This type of problem is very similar to our acquisition/lapsed problem, but it has applications across the donor ecosystem. They were building a classifier to predict whether a customer would make a purchase in the next six months. The results of this model could be used by salespeople or marketing teams.

Their training method was pretty interesting, and was slightly tweaked from the normal training/validation split. 

The typical training/validation process is to randomly sample some percent of the data (10-30%) and call this the "validation" set. No modeling/statistical analysis should be performed on this data. We'll use this set to see how well our model is performing. The other data (70-90%) is called a "training" set, and this is the data that we do all of our analysis and model building on.

Caterpillar did something a little different. Rather than doing a training/validation split, they trained their models on different time horizons. From what I gathered, they let the model see a different amount of historical data _before_ the six month period in which they were trying to predict. For example, one data set may have looked at the past 3 years, another model 3.5 years, and yet another 4 years. Each model was trying to predict the same thing (did the customer make a purchase in the next six months), but the amount of historical data the model saw was different.


__Analyzing Customer Complaints with NLP - Barclays__

Key takeaways:

  - Topic models and sentiment analysis can be implemented in a business to improve customer experience and business processes
    + They used somewhat advanced methods (i.e. deep learning) for sentiment analysis, but even some of the more naive methods can be actionable for an appropriate business context
      * Training a sophisticated model on sentiment requires a lot of people-hours to be spent labeling data
      * Worthwhile to investigate off-the-shelf sentiment analysis AI
  - Unstructured data has huge opportunities for business impact
    + Data scientists will be responsible for unlocking the potential of the data / adding structure to the data, BUT business users will be needed to formulate questions
  - NLP is the future
    + Better personalization of the customer experience

I really enjoyed this talk, because it emphasized some of the harder parts of NLP (e.g. lack of training data, language itself is difficult to understand, adding structure to text data requires a thought and technical skills). Most of the discussions at PAW were built around understanding a business problem / decision-making process well enough to implement some analytics solution. This talk seemed to be a bit more amorphous as to the initial business goals. 


## Workshop - The Deadly Dozen: The Top 12 Analytics Mistakes and the Techniques to Defeat Them

_An interesting thing happened to me while I was grabbing coffee on the way to the workshop._

The slides are available from this workshop. I'll highlight a sample of a few of the 12 mistakes I found most compelling.

The 12 Mistakes:

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
  6. __accept information/data leaks from the future__
     - allowing "future" data to be involved in the modeling process
     - was that data actually available for the time period you're interested in predicting/modeling?
     - This mistake can be (somewhat) mitigated using WFAA's historical data warehouse
  7. discount pesky cases
     - don't just throw data away, think about why that data is pesky
  8. extrapolate
     - don't go beyond the boundaries of what's available
  9. __answer every inquiry__
     - model is only qualified for a certain problem type
     - not qualified for asking new questions of it
         + may be completely outside of domain of expertise
  10. sample casually
  11. cherry-pick results
     - what was involved in getting to a significant result
     - [forking paths](https://en.wikipedia.org/wiki/The_Garden_of_Forking_Paths)
  12. __believe the best model__

__Information leakage__ is allowing data that did not exist for the time period you're interested in modeling to influence the results of the model. This is an especially difficult mistake to avoid, since most consumable data is "as of today" and will not reflect history. Allowing data from "the future" to influence your modeling results makes you very susceptible to survivor bias. For a model to be "worth its salt", it should be good at making predictions based on how the data actually was, instead of how it is.

We're lucky to have the historical data warehouse to avoid some of this information leakage, but it's still important to be very cognizant when we're susceptible to allowing information leakage to affect our modeling. In some cases it will be unavoidable to have "crappy" data, so we need to evaluate the tradeoffs of using it.

__Answer every inquiry__ is allowing _one_ model to be used for multiple purposes. While some models will be able to answer different questions, it's important to remember the purpose for which a model was built. It is better to say "the model doesn't know that" and build a new one, rather than making an incorrect generalization of the model's results. Not only is this important from an analytical/statistical point-of-view, it's also important for knowledge transfer across an organization. _Most_ models are not one-size-fits-all, but individuals in an organization not well-versed in machine learning may not realize this!

__Believing the best model__ is a mistake because statistics/data science/machine learning is hard. Models with exceptionally good performance should be examined very carefully, as there may be some underlying issue in the data causing such high accuracy (e.g. is the _output_ present in the _input_ data in some form?). Even if there is not something apparently wrong with the training data, a well-fitting model may be simply overfitting (many examples of neural networks falling prey to this mistake). Finally, believing the best model means you're throwing out all of the other _potentially useful_ models you investigated throughout the modeling process. Rather than blindly discarding these models, perhaps a subset could be used in an ensemble model instead. 


## Blogs to check out

[data elixir](https://dataelixir.com/)

[kdnuggets](https://www.kdnuggets.com/)