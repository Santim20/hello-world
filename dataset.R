andy <- read.csv("andy.csv")
head(andy)
str(andy)
length(andy$Day)
summary(andy)
names(andy)

andy[1, "Weight"]

andy[which(andy$Day==30), "Weight"]
subset(andy$Weight, andy$Day ==30)

andy_start<- andy[1, "Weight"]
andy_end <- andy[30, "Weight"]

andy_loss <- andy_start - andy_end

andy_loss

files <- list.files("diet_data")
files[3]
files_full <- list.files("diet_data", full.names=TRUE)
files_full

head(read.csv(files_full[3]))
andy_david <- rbind(andy, read.csv(files_full[2]))

head(andy_david)
tail(andy_david)

dat <- data.frame()

for (i in 1:5){
    dat<- rbind(dat, read.csv(files_full[i]))
    
}
str(dat)
median(dat$Weight, na.rm=TRUE)


median_weight <- function(directory ,day){
    filez <- list.files(directory, full.names = TRUE)
    dat<- data.frame()
    for(fil in filez){
        dat<- rbind(dat, read.csv(fil))
    }
    dat_subset <- dat[which(dat[, "Day"] == day),]  #subsets the rows that match the 'day' argument
    median(dat_subset[, "Weight"], na.rm=TRUE) 
}

median_weight("diet_data", 4)

## new line
str(mtcars)


# NEW CHANGES 
