library(dplyr)
library(tidytext)
library(tidyr)

analyze_sentiment <- function(df) {

  df_with_id <- df %>%
    mutate(id = row_number())

  sentiment_counts <- df_with_id %>%
    unnest_tokens(word, text) %>%
    inner_join(get_sentiments("bing"), by = "word") %>%
    count(id, sentiment) %>%
    pivot_wider(names_from = sentiment, values_from = n, values_fill = 0) %>%
    mutate(score = positive - negative)

  result <- df_with_id %>%
    left_join(sentiment_counts, by = "id") %>%
    mutate(
      positive = ifelse(is.na(positive), 0, positive),
      negative = ifelse(is.na(negative), 0, negative),
      score = ifelse(is.na(score), 0, score)
    )

  return(result)
}

