# moodDispensery

## Overview

moodDispensery is an R package that analyzes short text data and classifies its emotional tone, similar to a "mood ring" for data. It provides sentiment scores and mood labels for simple NLP exploration.

## Functions

* `analyze_sentiment()` – calculates sentiment scores from text
* `classify_mood()` – assigns mood labels (happy, sad, neutral)
* `theme_summary()` – summarizes mood distribution
* `analyze_mood()` – runs the full workflow


---

## 📦 Installation

Since this package is not on CRAN, install it from GitHub:

```r
install.packages("devtools")
devtools::install_github("YOURUSERNAME/moodDispensery")
```

Then load:

```r
library(moodDispensery)
```

---

## 📁 Package Structure

```
moodDispensery/
├── R/
│   ├── analyze_sentiment.R
│   ├── classify_mood.R
│   ├── theme_summary.R
│   └── analyze_mood.R
├── DESCRIPTION
├── NAMESPACE
```

---

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

result <- analyze_mood(df)

result$detailed
result$summary
```

---

## Output

* `detailed`: sentiment scores + mood labels
* `summary`: count and percentage of each mood

---

## Notes

* Designed for small text inputs
* Uses simple lexicon-based sentiment analysis

---
```

## Author

Grace Whitehurst

