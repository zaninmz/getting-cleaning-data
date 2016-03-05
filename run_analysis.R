##Download zip file from provided url to your working directory
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "accelerometers.zip")
##unzip file
x <- unzip("accelerometers.zip")
##print unzipped file to view contents
x
##read test & train data
test_data <- read.table(x[15], header = FALSE)
train_data <- read.table(x[27], header = FALSE)
##read features & subset variable names
features <- read.table(x[2], header = FALSE)
features1 <- features$V2
##combine test & train data
test_train_data <- rbind(test_data, train_data)
##apply variable names
names(test_train_data) <- features1
##read activity labels
test_activity <- read.table(x[16], header = FALSE)
train_activity <- read.table(x[28], header = FALSE)
##combine activity labels
test_train_activity <- rbind(test_activity, train_activity)
#name activity column
names(test_train_activity) <- c("activity")
##read subject numbers
test_subject <- read.table(x[14], header = FALSE)
train_subject <- read.table(x[26], header = FALSE)
##combine subject numbers
test_train_subject <- rbind(test_subject, train_subject)
##name subject column
names(test_train_subject) <-c("subject")
##combines columns
my_df <- cbind(test_train_subject, test_train_activity, test_train_data)
##Extract only measurements on the mean and standard deviation
my_df_mean_sd <-my_df[, grep("mean|std|activity|subject", names(my_df), value = TRUE)]
##Use descriptive activity names to name the activites in the data set
##convert acitivty variable to factor
my_df_mean_sd$activity <- factor(my_df_mean_sd$activity)
##use plyr package revalue function to make activity names descriptive
library(plyr)
my_df_mean_sd$activity <- revalue(x = my_df_mean_sd$activity, c("1" = "walking", "2" = "walking_upstairs", "3" = "walking_downstairs", "4" = "sitting", "5" = "standing", "6" = "laying"))
##Label the data set with descriptive variable names
##convert 't' to "time"
names(my_df_mean_sd) <- gsub("^t", "time", names(my_df_mean_sd))
##covert 'f' to "FFT"
names(my_df_mean_sd) <- gsub("^f", "FFT", names(my_df_mean_sd))
##convert "Acc" to "Accelerometer"
names(my_df_mean_sd) <- gsub("Acc", "Accelerometer", names(my_df_mean_sd))
##convert "Gyro" to "Gyroscope"
names(my_df_mean_sd) <- gsub("Gyro", "Gyroscope", names(my_df_mean_sd))
##Convert "Mag" to "Magnitude"
names(my_df_mean_sd) <- gsub("Mag", "Magnitude", names(my_df_mean_sd))
##Convert "BodyBody" to "Body"
names(my_df_mean_sd) <- gsub("BodyBody", "Body", names(my_df_mean_sd))
##Create second tidy data set with the average of each variable for each activity and each subject
y <- aggregate(. ~ subject + activity, my_df_mean_sd, mean)
head(y)
##save tidy data set to working directory
write.table(y, file = "tidy_data_set.txt", row.names = FALSE)
