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

summary(iris.uci)

# Observação: caso ocorra o erro "Error in plot.new() : figure margins too large"
# É só necessario dar zoom nos plots.

par(mfrow=c(2,2))
for(i in 1:4){
  hist(
    iris.uci[,i],
    xlab=colnames(iris.uci[i]),
    cex.lab=1.2,
    main=""
  )
}

