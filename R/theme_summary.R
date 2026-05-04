theme_summary <- function(df) {

  df %>%
    count(mood) %>%
    mutate(percentage = n / sum(n) * 100)
}

