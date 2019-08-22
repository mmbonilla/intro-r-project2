my_data <- read.csv("/home/nwknoblauch/Public/r-novice-inflammation/data/car-speeds.csv")
my_data
my_data$Color
max(my_data$Speed)
min(my_data$Speed)
max_speed <-max(my_data$Speed)
min_speed <- min(my_data$Speed)
speed_range <- max_speed - min_speed
speed_range
inf_data <- read.csv("/home/nwknoblauch/Public/r-novice-inflammation/data/inflammation-01.csv", header = FALSE)
str(inf_data)
inf_head <- inf_data[1:5,1:3]
plot(inf_data[,2])
plot(inf_data[,3])
plot(inf_data[,])
patient_1 <- inf_data[1,]
day_1 <- inf_data[,1]
day_2 <- inf_data[,2]
min(day_1) == 1
min(day_1) == 0
day2_zero <- day_2[day_2 == 0]
day2_zero
day2_nonzero <- day_2[0 !=day_2]
day_3 <- inf_data[,3]
allday_3_zero <- inf_data[day_3 ==0,]
day_3_nonzero <- day_3[0 !=day_3]
min_inflammation_day <- apply(inf_data, MARGIN = 2, FUN = min)
plot(min_inflammation_day)
