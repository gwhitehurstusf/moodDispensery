classify_mood <- function(sentiment_df) {

  sentiment_df %>%
    mutate(
      mood = case_when(
        score > 0 ~ "happy",
        score < 0 ~ "sad",
        TRUE ~ "neutral"
      )
    )
}
