# Packages
library(tidyverse)
library(ggthemes)

# Car Plot Chuck
car_plot <- mtcars |> select(mpg, wt) |>
  ggplot(aes(x = wt, y = mpg)) + 
  geom_point() + 
  geom_smooth(method = "lm", formula =  y ~ x, se = FALSE) +
  theme_clean() +
  labs(title = "Fuel Effciency and Weight",
       subtitle = "Heavier cars are less fuel efficient",
       y = "MPG",
       x = "Weight(1000s of lbs)",
       caption = "Henderson and Velieman (1981)")

car_plot

# To Saving any R object in an .rds file: write_rds() 
# Saving the plot "car_plot" in an .rds file
write_rds(car_plot, "car-plot.rds")
