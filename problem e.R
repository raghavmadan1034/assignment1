install.packages("rvest")
library(rvest)

url <- "https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-rightnow/"
webpage <- read_html(url)
ranking <- webpage %>%
  html_nodes(".countdown-index") %>%
  html_text()
movie_name <- webpage %>%
  html_nodes(".article_movie_title a") %>%
  html_text()
tomato_score <- webpage %>%
  html_nodes(".tMeterScore") %>%
  html_text()
year <- webpage %>%
  html_nodes(".start-year") %>%
  html_text()
#creating a df
movies_data <- data.frame(Ranking = ranking,
                          Movie = movie_name,
                          Tomato_Score = tomato_score,
                          Year = year)

print(movies_data)

