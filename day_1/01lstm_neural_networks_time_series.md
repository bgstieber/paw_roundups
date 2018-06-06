## LSTM Neural Networks for Time Series Analysis

## James McCaffrey - Microsoft Research

## Key Takeaways

Not much right now

## Talk Outline

  - What is a time series problem?
  - Common standard approaches
      + AR, SimpleExponentialSmoothing, MA
  - Not-So-Common Approaches
      + Deep neural networks
      + LSTM network
  - Different techniques work differently well for different problems
      + length of time series, seasonality, stationarity, ...
      + there is not _only one way_
  - LSTM neural networks
      + have states
          * allows for contextual understanding (natural language processing)
          * sequencing
      + recurrence: output depends on current input (t) and previous output (t-1)
      + image for LSTM
  - Sequence length is an important hyperparameter to tune
  - Length of memory also important hyperparameter
  - Tuning is (probably) different for anomaly detection vs. forecasting