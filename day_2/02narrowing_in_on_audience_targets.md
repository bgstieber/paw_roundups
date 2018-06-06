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
