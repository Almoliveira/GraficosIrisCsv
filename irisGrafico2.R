library(ggplot2)
library(GGally)
library(plyr)

iris.uci <- read.csv(url("https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), header=FALSE)

colnames(iris.uci)<-c("sepal.length","sepal.width","petal.length","petal.
width","species")

# a 35th amostra está incorreta
iris.uci[35,]

# Correção da 35th amostra
iris.uci[35,4] = 0.2

# a 38th amostra está incorreta
iris.uci[38,]

# Correção da 38th amostra
iris.uci[38,2:3] = c(3.6,1.4)

# eliminando a palavra Iris da coluna species
iris.uci$species <- mapvalues(iris.uci$species, from =
                                c("Iris-setosa", "Iris-versicolor", "Iris-virginica"),
                              to = c("setosa", "versicolor", "virginica"))




plot.matrix <- ggpairs(iris.uci, aes(color = species))

for(i in 1:5){
  for(j in 1:5){
    plot.matrix[i,j] <- plot.matrix[i,j] +
      scale_color_grey() +
      scale_fill_grey()
  }
}

plot.matrix