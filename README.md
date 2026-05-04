# moodDispensery

Sentiment-based mood classification for short text data.

---

## Overview

`moodDispensery` analyzes short text and classifies emotional tone as:

* happy
* neutral
* sad

It also provides sentiment scores and a summary of results.

---

## Example

```r
df <- data.frame(
  text = c(
    "I love this product",
    "This is terrible and frustrating",
    "It's okay, nothing special"
  )
)

result <- analyze_mood(df)

result$detailed
result$summary
```

---

## Output

* `detailed`: sentiment scores + mood labels
* `summary`: count and percentage of each mood

---

## Functions

* `analyze_sentiment()`
* `classify_mood()`
* `theme_summary()`
* `analyze_mood()`

---

## Notes

* Designed for small text inputs
* Uses simple lexicon-based sentiment analysis

---
```

## Author

Grace Whitehurst

