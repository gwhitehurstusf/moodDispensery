analyze_mood <- function(df) {

  result <- analyze_sentiment(df)
  labeled <- classify_mood(result)
  summary <- theme_summary(labeled)

  return(list(
    detailed = labeled,
    summary = summary
  ))
}

