# moodDispensery

moodDispensery is an R package designed to analyze short text data and classify its overall emotional tone. It applies sentiment analysis techniques to generate sentiment scores and assign mood labels (happy, sad, neutral), making it useful for introductory exploration of natural language processing concepts. call it the "mood ring" of packages!
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
    "It's okay, nothing special",
    "Absolutely amazing experience",
    "I hate how slow this is",
    "Pretty decent overall",
    "Worst purchase I've made",
    "I'm very happy with the results"
  )
)
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

