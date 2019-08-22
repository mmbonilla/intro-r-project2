# Three ways of subsetting 
# 1 by name 
my_data <- read.csv("/home/nwknoblauch/Public/r-novice-inflammation/data/car-speeds.csv")
#the dollar sign gives us named columns from our dataframrs
#dataframes also have default 

#we can also subset data by its index using the bracket notation

day_13 <- inf_data$V13
day_13[6:10]
 
#we can also subset dataframes by index using bracket notation
inf_data[1:3,4:8]
day_13[2]

my_data[1:3,1]

#can get a range of names just like you can get a range of indexes
#c("Color","Speed")
my_data[1:3,c("Color","Speed")]

#the third way is the "logical" or "boolean" or "true/false"
 x<-rnorm(n=100000)
length(x)
sum(x)
mean(x)
plot(x)
hist(x)
post_x <-x[x>0]
post_x
hist(post_x)


rnorm_pos <- function(n){
  y <-rnorm(n)
  is_pos_y <-y>0
  return(y[is_pos_y])
}

pos_data <- rnorm_pos(200000)
hist(pos_data)
min(pos_data)

rnorm_v <- function(n,v){
  y <-rnorm(n)
  is_above_v <-y > v
  return(y[is_above_v])
}

filtered_data <- rnorm_v(100,1)
min(filtered_data)


rnorm_asgi_1a <- function(n){
  y <-rnorm(n)
  return(min(y))
}

rnorm_asgi_1a(200000)

#this is wrong
rnorm_asgi_1b <- function(n){
  y <-rnorm(n)
  is_pos_y <-y>0
  return(min(is_pos_y))
}
 
rnorm_asgi_1b(200000)



