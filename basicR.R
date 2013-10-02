plot(density(rnorm(100000,0,1)), main="Random Normal 0 mean 1 sd")


a = rnorm(10, 0,1)
cat('a \n')
print(a)

b = c(2,4,5,3,6)
cat('b \n')
print(b)

cat('a +b \n')
print(a+b)

cat('a < 0')
print(a[a<0])
print(a[c(1,3,4,5)])

fun = function(a = 1, b=2,...,c=34){
  d=a+b+c
  return(d)
}

fun(a=34, b=23)

#data analysis
iris
dim(iris)
head(iris)
summary(iris)
model = lm(Sepal.Length ~ Sepal.Width, data=iris)
print(model)
summary(model)

#plot the original data with regression
plot(x=iris[,"Sepal.Width"], y=iris[,"Sepal.Length"])
abline(coef=model$coefficients, lwd=2, col="red")

plot(x=iris[,"Sepal.Width"], y=model$residuals)
hist(model$residuals)

#aggregate on the species
aggregate(formula= Sepal.Length~Species, data=iris, FUN=mean)
aggregate(formula= Sepal.Length~Species, data=iris, FUN=sd)
aggregate(formula= Sepal.Length+Sepal.Width ~ Species, data=iris, FUN=mean)
aggregate(formula= Sepal.Length ~ Species+Petal.Width, data=iris, FUN=mean)

table(iris[,"Species"])


#lapply example - 

operationsVec = round( runif(n=1000)*1000 )
plot(operationsVec)

expMaxList = lapply(operationsVec, function(x){
  expMax = max(rexp(n=x, rate=1))
  return(expMax)
})

plot(unlist(expMaxList))
hist(unlist(expMaxList))



