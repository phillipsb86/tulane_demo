# Afternoon ggplot exercises 
# Install libraries
install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

# Load libraries
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")

head(iris)
iris[1:2, ]
df <- melt(iris, id.vars = "Species")
df[1:2, ]

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
summary(myplot)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point()

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
myplot +  geom_point()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size = 3)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size = 3)

# subset randomly 100 diamonds

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

ggplot(data = d2, aes(x = carat, y = price, color = color)) + geom_point(size = 1)

ggplot(data = d2, aes(x = carat, y = price, color = color)) + 
  geom_point(size = 2)

library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) +
  geom_boxplot()

myplot <- ggplot(birthwt, aes(factor(race), bwt)) +
  geom_boxplot()
summary(myplot)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(size = 3) +
  facet_grid(Species ~ .)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(size = 3) +
  facet_wrap(~ Species)

library(RColorBrewer)
display.brewer.all()

ggplot(df, aes(Species, value, fill = variable)) + 
  geom_bar(stat = "identity" , position = "dodge") +
  scale_fill_brewer(palette = "Set2")

h <- ggplot(faithful, aes(x = waiting))
h + geom_histogram(binwidth = 30, fill = "purple")

h + geom_histogram(binwidth = 8, fill = "steelblue", color = "black")

df <- melt(iris, id.vars, aes(waiting))
ggplot(iris, aes(Species, Sepal.Length, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge")

ggplot(df, aes(Species, value, fill = variable)) + 
  geom_bar(stat = "identity" , position = "dodge") +
  scale_fill_brewer(palette = "Set2")


ggplot(d2, aes(clarity, fill = cut)) + 
  geom_bar(position = "dodge")

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(aes(shape = Species), size = 3) +
  geom_smooth(method = "1m")

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(aes(shape = Species), size = 3) +
  geom_smooth(method = "1m") + 

  ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(aes(shape = Species), size = 3) +
  geom_smooth(method = "1m") + 
