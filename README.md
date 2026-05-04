# moodDispensery

**Sentiment-Based Mood Classification for Short Text Data**

---

## 📌 Overview

`moodDispensery` is an R package designed to analyze short text inputs and classify their emotional tone—similar to a “mood ring” for data.

It processes text and returns:

* Sentiment scores
* Mood labels (happy, neutral, sad)
* A summary of overall emotional distribution

This package is intended for **introductory NLP exploration** and works best with small text datasets.

---

## ⚙️ Features

* Tokenizes text into words
* Uses sentiment lexicons to score text
* Classifies mood based on sentiment score
* Generates summary statistics

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

## 🚀 Example Usage

### Step 1: Create sample data

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

### Step 2: Run full analysis

```r
result <- analyze_mood(df)
```

---

### Step 3: View detailed results

```r
result$detailed
```

This includes:

* positive word count
* negative word count
* sentiment score
* mood classification

---

### Step 4: View summary

```r
result$summary
```

Example output:

```
     mood   n   percentage
1   happy   3   37.5
2 neutral   2   25.0
3     sad   3   37.5
```

---

## 🧠 How It Works

1. Text is tokenized into individual words
2. Words are matched with a sentiment lexicon
3. Sentiment score is calculated:

   * positive − negative
4. Mood is assigned:

   * score > 0 → happy
   * score < 0 → sad
   * score = 0 → neutral
5. Results are aggregated into a summary

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

## 🎯 Use Cases

* Learning basic NLP concepts
* Exploring sentiment analysis
* Quick text classification for small datasets
* Educational data science projects

---

## ⚠️ Limitations

* Designed for short text only
* Uses simple lexicon-based sentiment (not ML)
* Does not handle sarcasm or complex language

---

## 👩‍💻 Author

Grace Whitehurst
University of South Florida

---

## 📜 License

MIT License
