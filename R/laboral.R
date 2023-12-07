library(gapminder)
datos = gapminder
head(datos)

library(ggplot2)
library(dplyr)

grafico <- datos %>%
  ggplot() + 
  geom_point(aes(x = gdpPercap, y = lifeExp, col = continent, size = pop), alpha = 0.8) + theme_minimal() + 
  theme(legend.position = "bottom") + guides(size = "none") + 
  labs(x = "PIB per Capita" ,y = "Esperanza de Vida",  col = "") 

grafico

library(gganimate)

grafico +
  transition_time(year)
