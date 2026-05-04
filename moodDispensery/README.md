# moodDispensery

## Intoduction

moodDispensery is an R package designed to analyze short text data and classify its overall emotional tone. It applies sentiment analysis techniques to generate sentiment scores and assign mood labels (happy, sad, neutral), making it useful for introductory exploration of natural language processing concepts.

## Functions

* `analyze_sentiment()` – calculates sentiment scores from text
* `classify_mood()` – assigns mood labels (happy, sad, neutral)
* `theme_summary()` – summarizes mood distribution
* `analyze_mood()` – runs the full workflow

## Example Usage

```r
library(moodDispensery)

df <- data.frame(
  text = c(
    "I love this product",
    "This is terrible and frustrating",
    "It's okay, nothing special",
    "Absolutely amazing experience",
    "I hate how slow this is",
    "Pretty decent overall",
    "Worst purchase I've made",
    "I'm very happy with the results"
  )
)
##The analyze_mood() function combines sentiment scoring, mood classification, and summary generation into a single workflow.
result <- analyze_mood(df)


result$detailed
result$summary
```

