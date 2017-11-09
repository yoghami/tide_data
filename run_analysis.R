library(dplyr)
#step 1 ---> reading the two data sets and mergong them
train_data <- read.table("~/HAR/train/X_train.txt")
activity <- read.table("~/HAR/train/y_train.txt")
subject <- read.table("~/HAR/train/subject_train.txt")
activity <- rename(activity, activity = V1)
subject <- rename(subject, subject = V1)
train_data <- cbind(subject, activity, train_data)

test_data <- read.table("~/HAR/test/X_test.txt")
activity <- read.table("~/HAR/test/y_test.txt")
subject <- read.table("~/HAR/test/subject_test.txt")
activity <- rename(activity, activity = V1)
subject <- rename(subject, subject = V1)
test_data <- cbind(subject, activity, test_data)


all_data <- merge(train_data, test_data, all = TRUE, sort = FALSE)
#step 2 ---> Extracting the measurements on the mean and the standard deviation for each measuement  
names_to_extract <- read.table("~/HAR/features.txt")
means <- grep("mean", names_to_extract$V2)
std <- grep("std", names_to_extract$V2)
both <- c(means, std)
all <- sort(c((both + 2), 1, 2))
all_data <- all_data[,all]

#step 3 ---> naming the activites in the data set
activity_names <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING") 
for(i in 1:6)
{
    all_data$activity[all_data$activity == i] <- activity_names[i]
}
#step 4 ---> labeling the data with descriptive variable names 
both <- sort(both)
for(i in 1:length(both))
{
    colnames(all_data)[i + 2] <- as.character(names_to_extract[[2]][[both[i]]])
}
#step 5 ---> creating independent data set with the average of each variable for each activity and each subject
new_data <- all_data[0,]
x <- list()
l <- 1
for(i in 1:30)
{
    for(j in 1:6)
    {
        for(k in 1:79)
        {
            new <- mean(all_data[which(all_data$activity == activity_names[j] & all_data$subject == i), ][[k + 2]])
            x <- c(x, new)
        }
        new_data[l,] <- c(i, activity_names[j], x)
        l <- l + 1
        x <- list()
    }
}
# writing the data into a text file
write.table(new_data, file = "tidy_set.txt", row.names = FALSE)