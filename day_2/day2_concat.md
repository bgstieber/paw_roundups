
# Advanced Analytics - just because you can, should you? 

## Robert Lanning - Director People Analytics - Silicon Valley Bank

_Nice storytelling and great presentation, but not a lot of details that can be captured in a written summary._

## Key Takeaways

  - Have context around ML solutions
  - Understand costs of implementing the solution

## Rough Outline of Talk

Importance of having a plan when implementing advanced analytics solutions.

What is the context, and what are we trying to solve for? 

Think carefully about the consequences of implementing a ML solution (e.g. building a predictive model for scoring resumes...perpetuates hiring biases).

Understand what is achievable with the data and what data would be needed to achieve something (and how much that data would cost). Also the implications for that data achievement.

Side notes on HR analytics:

  - Text analytics
  - Gathering HR data, typically involving unstructured data
      + Are you recording exit interviews?
  - 



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





# Making a Business Case with Machine Learning 

## Bob Bress - VP of Analytics - Freewheel

## Key Takeaways

  - quantify impact of ML implementation in compelling way
  - understand how ML implementation changes business processes and have a change management plan
  - anticipate maintenance and costs (both with _and_ without the ML implementation)
  - build incrementally and to meet customers' needs
      + start simple with proof-of-concept phase
      + show incremental benefit of ML solution
  - understand data requirements and tech to support it
  - identify a champion to push for implementation

## Rough Outline of Talk 

Going from concept to productionalizing. Need to make business case for automating a decision-making process.

Questions to ask for ML (considerations for developing a business case for implementing/developing an ML solution)

  - What problem does it solve?
      + Interesting model can be useless without a business application
  - Is the key data available?
      + What are data systems like?
      + Is this data available across the business, or just for a select
  - Can we quantify the benefits?
      + What are the critical metrics
          * How is success measured?
      + Measure a baseline (decision-making process without the ML solution)
  - Who is the customer?
      + Keep work on proof-of-concept as simple as possible
  - How good is "good enough"?
      + incremental development (i.e. improvement) should be worth the analyst / business effort
  - What are the operational impacts?
      + change management
  - How will it be maintained?
      + System performance, data quality, model updating/refreshing
  - What are the costs (without ML vs. with ML)
  - What is the demand for this solution?
  
Know risks and have a plan

  - Will ML be critical to the business and need to be ready in real time
  - How will business be impacted if ML goes down or is rendered unusable
  - How good is the data (quality, storage, and supply)
  - What business scenarios require manual intervention
      + When will we need a human-in-the-loop

 


# Revisiting Customer Complaints using Natural Language Processing 

## Vishal Morde - VP Data Science - Barclays

_Really good session which showed how NLP analyses could be implemented in a business. Very appropriate as WFAA moves into this space a bit._

## Key Takeaways

  - Topic models and sentiment analysis can be implemented in a business to improve customer experience and business processes
      + Complaints can be handled better
  - Unstructured data has huge opportunities for being impactful in a business
      + It's up to data scientists to unlock the potential
      + Need help labeling the data
          * Data science cliche #1: garbage in, garbage out
  - Complaints = insight
      + Most unsatisfied customers can be learned from
  - NLP is future of AI
      + kids growing up are not just digital-native, they're also AI-native
      + Personalize and improve the consumer experience

## Brief Outline of Talk

NLP connects artificial intelligence and linguistics.

It is extremely difficult to understand language. 

Typical NLP workflow
  1. Getting text data
  2. Pre-processing
     - Removing punctuation
     - stemming/lemmatization
     - part of speech tagging
  3. Feature engineering
     - creating structure from unstructured data
     - vectorization
  4. NLP tasks

__Case Study #1: Topic Modeling__

Problem: 25% of customer complaints were misclassified

Solution: topic modeling on complaint narratives

Methods: TF-IDF into LDA

Used TF-IDF to determine important words

Compared original complaint categories to topics suggested by LDA.

Complaint categories are not mutually exclusive: could have mutliple categories within a category. Needed to understand similarities between complaint categories. 

__Case Study #2 Sentiment Analysis__

Problem: oblivious to underlying consumer sentiment

Solution: sentiment analysis on complaint narratives

Method: sentiment analysis using bag-of-words and deep learning

Sentiment analysis workflow: data pre-processing, sentiment detection, sentiment polarity, sentiment aggregation

Used neural networks to understand sentiment. LSTM neural networks which have "memory", allowing for understanding sequence of terms in spoken words.

LSTM neural networks improved over previous models and beat GBM and random forests.

Results and Impact

  - Revamped fraud prevention strategies
      + People were most upset when they complained about these categories
  - Bvocal and Voice of Customer campaigns
      + Sentiment analysis showed that implementing these programs was valuable
  - Improved JD Powers ratings

## Questions

important to decide number of topics in LDA, how did you come to this decision

sentiment analysis needs labels to train the data, where did you get the labels from?


# Digging into Future Value with Predictive Analytics

## Morgan Vater - Caterpillar

## Key Takeaways

 1. Build a strong foundation for analytics by developing and implementing [DELTA model](https://iianalytics.com/analytics-resources/delta-model-five-stages-of-analytics-maturity-a-primer) within organization
 2. Balance focus on organizational and technical aspects of analytics
 3. Think big, start small, and act fast. Optimize results.

## Rough Outline of Talk

Why are companies not consistently realizing value in analytics?

  - Analytics skills gap _across_ industries
  - Many companies not leveraging advanced analytics tools or predictive analytics techniques
  - Cultural change needed for better utilization

Cultural barriers to analytics utilization

  - Complacency
      + Blockbuster, Kodak
  - Competing priorities
      + Analytics is an enabler to business strategy
  - Resistance to change
      + needs to be easy to use and adopt
      + needs to have the so-what factor
  - Skepticism
      + need to build trust in analytical method

We're not just analytics professionals, we're stewards / evangelists of changing business-as-usual

Analytics DELTA - Data, Enterprise, Leadership, Targets, Analysts

They use agile in two-week sprints

"If you build the technical analytics too far ahead of the organization, your efforts will be wasted"

They've driven analytics across the entire organization - which was no small feat. 


# How Predictive Modelers Should Use Data to Tell Data Stories

## Dean Abbott - Co-Founder and Cheif Data Scientist - SmarterHQ

## Key Takeaways

  - know your software vis building blocks
  - every vis is biased
      + be transparent about bias
      + different biases reveal complementary aspects of the data story
  - Know your audience
      + tell a story that the heaeres understand

## Rough Outline of Talk

Kaiser Fung

Visualization on a matrix of Low-High Effort (x axis) vs. Low-High Reward (y axis)

Different types of descisions
 
  - Strategic (low frequency)
  - Tactical (medium frequency)
  - Operational (high frequency and high impact)

Principles

  - Know what you're working with
      + visualization types
  - Pie charts aren't just bad because they're bad, they're also frequently misused
      + Poor visual communication
          * examples of charts where it's nearly impossible to have key takeaways

No free lunches when tranforming the data to make visual communication clearer (zooming, log-scaling)

Showed example of a somewhat complex plot which contained all of the information from the analysis, but wasn't understood by stakeholders. Used a decision tree with discrete and easy-to-understand and actionable rules.





# Narrowing-in on Audience Targets; Leveraging Cross Platform Affinity for Marketing Optimization

## Samantha Lipson - Data Scientit - Viacom

_Got to this session a little late, and speaker seemed rushed._

## Key Takeaways

  - Measured similarity between shows and websites to find websites where company could advertise for certain shows
  - Also looked at similarity between shows to find out which viewers of show A were also watching show B 

## Rough Outline of Talk 

Trying to improve a television network's promos and suggested shows

Data: overlaps between shows and websites

  - Had viewing + site behavior for users and calculated sum of overlap
  - Need probability of co-occurrence
  - [Positive Pointwise Mutual Information](https://web.stanford.edu/~jurafsky/slp3/15.pdf) - PPMI
      + Just need overlap matrix

pmi(x,y) = log{p(x,y) / (p(x) * p(y))} = log(p(x|y) / p(x)) = log(p(y|x) / p(y))

Built an application which allowed users to look at overlaps between show and websites. Allowed for targeting audience for a certain show for different sites. 

Finding similar shows, used PPMI score to calculate cosine similarity between two shows. Interesting way to calculate similarity, why not use correlation between vectors?

  - Pretty intuitive ideas for analytical project, how could we implement something like this in our business
      + looking at relationship for each X across some other element Y


# Operationalizing Machine Learning: How to Ensure Value-Driven Deployment

## Agarwal-CEO, Ramirez-CEO, Vawter-Chief Analytics Director

## Key Takeaways from Panel

Conflicts between development and deployment of models

  - technical skills 
  - speed vs. accuracy

How do you accelerate the modeling process?

How do you grow the analytical process (move away from ad hoc) to face bigger challenges.

"Operationalization"

Barriers to deployment

  1. wasn't built with customer in mind
     - who are this model's users?
  2. not scalable
  3. no user acquistion or retention plan
     - no users = no value
  4. no integration into business process
     - turn analytics solution into business process
     - CRISPDM

Stop building solutions without users in mind. 

Do:

  - Leverage domain expertise
      + when to involve a human
      + input on building model
  - focus on business problem
  - Integrated data supply chain
      + Make it easy to get the data needed to re-train the model 
      + not a one-time exercise

Don't

  - Don't forget about deployment
  - Don't discuss algorithms when presenting results of the model
      + focus on impact not algorithm
  - Don't believe in out-of-the box AI or machine learning
      + It takes time to go through the modelling process
      + Can't turn on instantly

Where to start at an immature analytics organization

  - Current state analysis
      + what already exists
      + get vision from executives and operating managers
      + how are we trying to change business levels
  - Make sure an infrastructure is available for what modeling/machine learning involves
  - What are the measures of success
      + Value drivers in organization
      + Make sure framework for proofs of concept is in place
      + solid communication plan in place
  - Get proof-of-concepts ready to ship early and often
      + "Agile" framework
          * not _actually_ agile, but focused on a lot of deliverables along the way
  - Solve a problem further down the organization
      + change isn't going to (initially) come at executive level

Data governance and management

  - Agile POCs are to test if a concept will work, is it going to help the business?
  - If data governance is not in place, models will fail
      + Version control, integrated data supply chain
  - Can still improve business processes with poor quality data
      + __A 60-40 model beats a 50-50 coin flip, even on crappy data__

Definition of operationalization

  - Impacts a business decision
      + You're able to use the ML model to change a business decision
      + "It depends" for technical operationalizng a model
  - Do research on users and what their processes are to ensure what has been built will actually be used
      + Measure user acceptance in a few different ways

Thinking about the implementation of a model should follow through the entire development lifecycle. Operationalization should not be a surprise.

Measure success of a model by how it's improved KPIs.

What has caused failures for businesses to deploy analytics?

  - Lack of belief in analytics
  - Organizations set up huge and great IT infrastructure, but no idea of how it will be used, or what success will look like
  - Change management
      + complacency and skepticism
      + Need to have a solid change management plan in place

Strategies for growing and scaling analytics team at an organization

  - What processes are needed to ensure that resources are still allocated efficiently
      + Knowledge management and documentation
          * Not just good code documentation, but documenting results and findings from the project
          * are you allowing next person working on the model to understand what was done
      + Learn by observation and not by experience
  - Invest in talent development, have a strategy around training
  
How to choose between building internally vs building externally

  - Focus on core competencies
  - Scalability
  - Buy vs. build
      + Does capability exist internally?
      + Competitive differentiator
          * Need to hold close to the chest?
      + Cost and ROI?

 


# Predicting Readiness to Purchase

## Andy Jacob - Data Scientist, Will Scheck - Analytics Manager - Caterpillar

## Key Takeaways

  - Data accuracy is vital
  - Don't fall in love with one model
  - It's a journey
      + It took them 6-9 months to have a production-ready model
  - Interesting approach to the acquistion / lapsed problem

## Rough Outline of Talk

Project outline, they were trying to accomplish:

  - Identify customers most likely to purchase
  - prioritize leads
  - sell more machines

 Analytics: build accurate model that can be re-ran when needed (what goes into whether a customer buys a machine?)

 Previously: salespeople would purchase customer lists from 3rd party vendors

 Customer records were dirty

   - Had: customer transactions from 5 database stored around Caterpillar, machine current owner (their best guess)
   - Needed: accurate representation of machine ownership, historical transaction information for customer, machine value over time

How should data be organized?

  - Had historical transactional data, then looked at purchasing in next six months
      + We could build similar models such as:
          * likelihood of gift in next X, Y, Z months
  - Built testing data sets based on how far back they looked historically
      + kept six months constant, but look at different time ranges for historical data
  - Rare event problem, used down-sampling for non-sale case
      + Layman's terms: dropped some non-events from modeling data sets
 
Used gradient boosted model

  - 2000 lines of code to get data ready for model
  - 1 line of code to specify the model

Timeline of project: 6-9 months to go from cleaned up data to modeling to handing list to marketers

