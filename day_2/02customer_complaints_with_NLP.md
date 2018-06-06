# Title

## Speaker - Affiliation

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