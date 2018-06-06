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
