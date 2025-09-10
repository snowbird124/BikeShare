library(tidyverse)
library(tidymodels)
library(vroom)
library(patchwork)

train <- vroom('/Users/laynelarson12/Documents/GitHub/STAT 348/BikeShare/train.csv')


weather <- ggplot(data = train, aes(x = weather)) +
  geom_bar()

temp <- ggplot(data = train, aes(x = temp, y = count)) +
  geom_point() +
  geom_smooth(se = FALSE)

plot3 <- ggplot(data = train, aes(x = humidity, y = count)) +
  geom_point() +
  geom_smooth(se = FALSE)

plot4 <- ggplot(data = train, aes(x = season, y = count)) +
  geom_point()

(weather + temp) / (plot3 + plot4)


