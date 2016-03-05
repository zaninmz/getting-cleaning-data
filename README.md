---
title: "README"
output: html_document
---

---
title: "README"
author: "MZANIN"
date: "March 5, 2016"
output: html_document
---
#*Rationale*
This document provides an explanation of the code used for creating a tidy data set for data collected by 30 volunteers performing physical activities while wearing a Samsung Galaxy S II smartphone.

##Download zip file from repository (see url in code) to your working directory

```{r}
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "accelerometers.zip")
##unzip file
x <- unzip("accelerometers.zip")
```

##Print unzipped file to view contents

```{r}
print(x)
```

##Read test and training data

```{r}
test_data <- read.table(x[15], header = FALSE)
train_data <- read.table(x[27], header = FALSE)
```

##Merge test and training data

```{r}
test_train_data <- rbind(test_data, train_data)
```

##Read features & subset variable names

```{r}
features <- read.table(x[2], header = FALSE)
features1 <- features$V2
```

##Apply variable names

```{r}
names(test_train_data) <- features1
```
##Read activity labels
```{r}
test_activity <- read.table(x[16], header = FALSE)
train_activity <- read.table(x[28], header = FALSE)
```
##Combine activity lables
```{r}
test_train_activity <- rbind(test_activity, train_activity)
```
##Name activity column
```{r}
names(test_train_activity) <- c("activity")
```
##Read subject numbers
```{r}
test_subject <- read.table(x[14], header = FALSE)
train_subject <- read.table(x[26], header = FALSE)
```
##Combine subject numbers
```{r}
test_train_subject <- rbind(test_subject, train_subject)
```
##Name subject column
```{r}
names(test_train_subject) <-c("subject")
```
##Combine data, subject and activity columns
```{r}
my_df <- cbind(test_train_subject, test_train_activity, test_train_data)
```
##Extract only measures of mean and standard deviation
```{r}
my_df_mean_sd <-my_df[, grep("mean|std|activity|subject", names(my_df), value = TRUE)]
```
##Use descriptive activity names to name the activites in the data set
#####convert acitivty variable to factor
```{r}
my_df_mean_sd$activity <- factor(my_df_mean_sd$activity)
```
###use plyr package revalue function to make activity names descriptive
```{r}
library(plyr)
my_df_mean_sd$activity <- revalue(x = my_df_mean_sd$activity, c("1" = "walking", "2" = "walking_upstairs", "3" = "walking_downstairs", "4" = "sitting", "5" = "standing", "6" = "laying"))
```
##Label the data set with descriptive variable names
###convert 't' to "time"
```{r}
names(my_df_mean_sd) <- gsub("^t", "time", names(my_df_mean_sd))
```
###covert 'f' to "FFT"
```{r}
names(my_df_mean_sd) <- gsub("^f", "FFT", names(my_df_mean_sd))
```
###Convert "Acc" to "Accelerometer"
```{r}
names(my_df_mean_sd) <- gsub("Acc", "Accelerometer", names(my_df_mean_sd))
```
###Convert "Gyro" to "Gyroscope"
```{r}
names(my_df_mean_sd) <- gsub("Gyro", "Gyroscope", names(my_df_mean_sd))
```
###Convert "Mag" to "Magnitude"
```{r}
names(my_df_mean_sd) <- gsub("Mag", "Magnitude", names(my_df_mean_sd))
```
####Convert "BodyBody" to "Body"
```{r}
names(my_df_mean_sd) <- gsub("BodyBody", "Body", names(my_df_mean_sd))
```
##Create second tidy data set with the average of each variable for each activity and each subject
```{r}
y <- aggregate(. ~ subject + activity, my_df_mean_sd, mean)
head(y)
```
##Save tidy data set to your working directory
```{r}
write.table(y, file = "tidy_data_set.txt", row.name = FALSE)
```

