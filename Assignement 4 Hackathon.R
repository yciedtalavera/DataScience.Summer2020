library(tidyverse)
library(palmerpenguins)

#SpeciesvsBodyMassScatterPlot
ggplot(data = penguins,
       aes(x = species, 
           y = body_mass_g)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 3,
             alpha = 0.8) +
  #theme_minimal() +
  scale_color_manual(values =
                       c("darkorange","purple","cyan4")) +
  labs(title = "Penguin size, Palmer Station LTER",
       subtitle = "Body mass for Adelie, Chinstrap and Gentoo Penguins",
       x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Penguin species",
       shape = "Penguin species") +
  theme_minimal()

#StatsSummaryAverageBodyMass
ggplot(data = penguins) +
  stat_summary(
    mapping = aes(x = species, y = body_mass_g),
    fun.min = min,
    fun.max = max,
    fun = mean) +
  labs(title = "Average Body Mass per Species",
       subtitle = "in grams")
