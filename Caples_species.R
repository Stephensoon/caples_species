library(rebird)
library(tidyverse)

species <- ebirdhistorical(
  loc = "US-CA-017",
  key = "",
  date = "2022-06-16"
)

# map_df()
# make a list of dates