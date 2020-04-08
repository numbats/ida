# data sourced from gapminder

countries <- c("New Zealand",
               "Australia")

gap_life <- read_csv("~/Downloads/life_expectancy_years.csv") %>% 
  pivot_longer(cols = -country,
               names_to = "year",
               values_to = "life_expectancy")  %>% 
  mutate(year = as.integer(year)) %>% 
  filter(year >= 2012,
         year < 2021,
         country %in% countries)

gap_income <- read_csv("~/Downloads/income_per_person_gdppercapita_ppp_inflation_adjusted.csv") %>% 
  pivot_longer(cols = -country,
               names_to = "year",
               values_to = "gdp") %>% 
  mutate(year = as.integer(year)) %>% 
  filter(year >= 2012,
         year < 2021,
         country %in% countries) 

gap_co2 <- read_csv("~/Downloads/co2_emissions_tonnes_per_person.csv") %>% 
  pivot_longer(cols = -country,
               names_to = "year",
               values_to = "co2") %>% 
  mutate(year = as.integer(year)) %>% 
  filter(year >= 2012,
         country %in% countries) 

gap_life
gap_income
gap_co2

gap_life_au <- gap_life %>% filter(country == "Australia")
gap_income_au <- gap_income %>% filter(country == "Australia")
gap_co2_au <- gap_co2 %>% filter(country == "Australia")

write_csv(gap_life, here::here("exercises/4b/data/gap_life.csv"))
write_csv(gap_life_au, here::here("exercises/4b/data/gap_life_au.csv"))

write_csv(gap_income, here::here("exercises/4b/data/gap_income.csv"))
write_csv(gap_income_au, here::here("exercises/4b/data/gap_income_au.csv"))

write_csv(gap_co2, here::here("exercises/4b/data/gap_co2.csv"))
write_csv(gap_co2_au, here::here("exercises/4b/data/gap_co2_au.csv"))
