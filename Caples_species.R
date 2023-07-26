library(rebird)
library(tidyverse)

start_date <- as.Date("2022-05-22")
end_date <- as.Date("2022-07-01")

range <- seq(from = start_date, to = end_date, by = "days")

get_ebird_data <- function(date) {
  ebirdhistorical(
    loc = "US-CA-017",
    key = "vd22umpprej0",
    date = date
  )
}

species <- map_df(range, get_ebird_data)
