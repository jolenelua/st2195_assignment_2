library(rvest)

link <- 'https://en.wikipedia.org/wiki/Comma-separated_values'

csv_wiki <- read_html(link)

csv_table <- html_element(csv_wiki, "table.wikitable") %>%
  html_table()

str(csv_table)
csv_table

write.csv(csv_table, "ST2195 Practice Assignment 2 Q2.csv", row.names = FALSE)