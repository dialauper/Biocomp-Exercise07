##Biocomp Exercise 7, Nov 5
##Dianna Perez

## 1. create bash 'head' function equivalent
file <- matrix(letters,nrow=13,ncol=2, byrow="TRUE")
num <- 5  #rows to show

head.file <- file[1:num,]
head.file

### 2. 
iris<- read.csv("Biocomp-Exercise07/iris.csv")
##a. print the last 2 rows in the last 2 columns to the R term
str(iris) #150 rows, 5 columns
#reference the last two rows (149-150) and last two columns (4-5)
iris2x2<- iris[149:150,4:5]  
iris2x2

##b. get number of obs. for each species included in the data set
nsetosa<-sum(iris$Species=="setosa")
nvirginica<-sum(iris$Species=="virginica")
nversicolor<-sum(iris$Species=="versicolor")

nsetosa
nvirginica
nversicolor

##c. get rows with Sepal.Width > 3.5
sepwidth <- iris[iris$Sepal.Width > 3.5,]
sepwidth                     

##d. write the data for species setosa to csv
setosa.iris <- iris[iris$Species=="setosa",]
?write.csv
write.table(x = setosa.iris, file="setosa.csv", sep=",") #look at day 2, write.table
#find how to find this csv file

##e. calc the mean, min, and max of Petal.length for virginica
#create a new subset of virginica species
virginica.iris <- iris[iris$Species=="virginica",]

#calculate the desired values
mean.pL.virg <- mean(virginica.iris$Petal.Length)
min.pL.virg <- min(virginica.iris$Petal.Length)
max.pl.virg <- max(virginica.iris$Petal.Length)

#report the desired values
print("This is the mean petal length for virginica species:")
mean.pL.virg
print("This is the minimum petal length for virginica species:")
min.pL.virg
print("This is the max petal length for virginica species:")
max.pl.virg


