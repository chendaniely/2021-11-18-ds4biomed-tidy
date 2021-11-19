library(tidyverse)

tumor <- read_csv("data/tumorgrowth_long.csv")

tumor_tidy <- tumor %>%
  pivot_longer(`0`:last_col(), names_to = "day", values_to = "size") %>%
  drop_na()
tumor_tidy

tb <- read_csv("data/tb_long.csv")

tb_long <- tb %>%
  pivot_longer(m014:last_col()) %>%
  separate(name, into = c("sex", "age_group"), sep = 1)

tb_long


cms <- read_csv("./data/cms_utilization.csv")

cms_long <- cms %>%
  pivot_longer(`2007`:last_col(), names_to = "year")

cms_tidy <- cms_long %>%
  pivot_wider(names_from = variable, values_from = value)
