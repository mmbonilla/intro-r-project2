fahrenheit_to_kelvin <- function(temp_F){
  
  temp_K <- ((temp_F -32) + (5/9))+273.15
             return(temp_K)
}

boiling_k <- fahrenheit_to_kelvin(212)
boiling_k

kelvin_to_celcius <- function(temp_c){
  
  temp_c <- (temp_c - 273.15)
  return(temp_c)
}

kelvin_to_celcius(0)

fahrenheit_to_celcius <- function(temp_F){
  temp_K <- fahrenheit_to_kelvin(temp_F)
  temp_c <- kelvin_to_celcius(temp_K)
  return(temp_c)
}

fahrenheit_to_celcius(32)

#write a function that take two vectors (a & b) as arguments, retunrs 1 vector that is composed of a and b
highlight <- function(a,b){
a <- c(1,3,5)  
b <- c(2,4,6)
vec_3 <- c(a,b)
return(vec_3)
}

highlight(1500,5664)

highlight_2 <- function(a,b){
  a <- c(1,3,5)  
  b <- c(2,4,6)
  vec_3 <- sum(a,b)
  return(vec_3)
}

highlight_2

highlight_3 <- function(a,b){
  vec <- c(a,b,a)  
  return(vec)
}
vec_1<- c(1,2,3.8,9,10,11)
vec_2<- c("a","b","c")

highlight_3(vec_1,vec_2)


#write a funcation called edges, that returns a vector composed of the first and last element of the input vector

edges <- function(vec){
 first_inpt <- vec[1]
 vec_length<-length(vec)
 last_inpt <- vec[vec_length]
 vec_3 <- c(first_inpt,last_inpt)
 return(vec_3)
 }

edges(vec_1)

centered <- function(data, midpoint = 0){
 
  centered_data <- data - mean(data) + midpoint
  return(centered_data)
}

example_data <- c(0,0,0,0,0)

centered(data = example_data, midpoint = 0)
centered(data = example_data, midpoint = 2)
centered(data = example_data)

inf_data <- read.csv("/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-01.csv", header = FALSE)

centered(data = inf_data)
head(inf_data)

mean(inf_data$V7)

day_7_mean_0 <- centered(data = inf_data$V7)

day_7_mean_0 + mean(inf_data$V7)
inf_data
inf_data$V7

analyze <-function(filename){
  
  #this function plots the avg, max, and min of inflammation over time
  #The input is a charcter stream of a csv file
  
  dat<-read.csv(file = filename, header = F)
  avg_day_inflammation <-apply(X=dat, MARGIN = 2, FUN = mean)
  max_day_inflammation <-apply(X=dat, MARGIN = 2, FUN = max)
  min_day_inflammation <-apply(X=dat, MARGIN = 2, FUN = min)
  
  plot(avg_day_inflammation)
  plot(max_day_inflammation)
  plot(min_day_inflammation)

}

test_file <-"/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-01.csv"

test_file_2 <-"/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-02.csv"
analyze(filename=test_file_2)

best_practice<-c("let","the","computer","do","the","work")

print_words_for <- function(sentence){
  for (word in sentence){
    print(word)
  }
}

print_words_for(sentence=best_practice)

for (i in 1:10){
  a<- 2^i
  print(a)
}

colors <- c("red","blue","green")
for(col in colors){
  print(paste("My favorite color is", col))
}

#wriet a fucntion using the for loop that computes exponentials

data_numbers <-c(1,2,3,4,5)
for (i in data_numbers){
  a<- 2^i
  print (a)
}


 my_exponetial<- function(numbers){
   temp_exp = 0
   for(exp in numbers){
   temp_exp<-2^(temp_exp+exp)
   print(temp_exp)
   }
   return(temp_exp)
}

 
 
my_exponetial(c(1,2,3,4,5))
my_exponetial(5)


my_exponetial_2<- function(numbers){
  temp_exp = 0
  for(exp in numbers){
    temp_exp<-((temp_exp+exp)^2)
    print(temp_exp)
  }
  return(temp_exp)
}

my_exponetial_2(c(1,2,3,4,5))
my_exponetial_2(5)


my_exponetial_3 <- function(a,n){
  temp_exp<-a
  for (i in 1:n)
    {temp_exp=temp_exp * a
    print(temp_exp)
  }
  return(temp_exp)
}

my_exponetial_3(2,4)

