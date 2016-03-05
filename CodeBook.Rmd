---
title: "Codebook"
output: html_document
---

**Description of study/Sampling Information**: "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data".
[linked phrase](source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

**Technical information**: The tidy_data_set.txt containes 180 observations on 81 variables (see variables explanation under the **Details about the Data** section). The data set was developed by consolidatiting, cleaning and subsetting variables from a larger data set obtained from [linked phrase](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
The code used for undertaking this process can be found in the README.md attached to this repo.

**Details about the data**: The tidy_data_set.txt variables and corresponding column numbers are detailed below. Each observation represents the mean of the specified variable measurement for each volunteer undertaking the six activities described in the **Description of study/Sampling Information** section above. The *features_info* file in the original data source [linked phrase](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) provides a thorough explanation of the measurement variables from which the means were calculated: 

*The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform xial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation*

As documented in the README.md file, measurement variable names were expanded for clarity:

 [1]"subject"                                            
 [2]"activity"                                          
 [3] "timeBodyAccelerometer-mean()-X"                     
 [4]"timeBodyAccelerometer-mean()-Y"                    
 [5] "timeBodyAccelerometer-mean()-Z"                     
 [6]"timeBodyAccelerometer-std()-X"                     
 [7] "timeBodyAccelerometer-std()-Y"                      
 [8]"timeBodyAccelerometer-std()-Y"                     
 [9] "timeGravityAccelerometer-mean()-X"                  
 [10]"timeGravityAccelerometer-mean()-Y"                 
[11] "timeGravityAccelerometer-mean()-Z"                  
[12]"timeGravityAccelerometer-std()-X"                  
[13] "timeGravityAccelerometer-std()-Y"                   
[14]"timeGravityAccelerometer-std()-Z"                  
[15] "timeBodyAccelerometerJerk-mean()-X"                 
[16]"timeBodyAccelerometerJerk-mean()-Y"                
[17] "timeBodyAccelerometerJerk-mean()-Z"                
[18]"timeBodyAccelerometerJerk-std()-X"                 
[19] "timeBodyAccelerometerJerk-std()-Y"                  
[20]"timeBodyAccelerometerJerk-std()-Z"                 
[21] "timeBodyGyroscope-mean()-X"                         
[22]"timeBodyGyroscope-mean()-Y"                        
[23] "timeBodyGyroscope-mean()-Z"                         
[24]"timeBodyGyroscope-std()-X"                         
[25] "timeBodyGyroscope-std()-Y"                          
[26]"timeBodyGyroscope-std()-Z"                         
[27] "timeBodyGyroscopeJerk-mean()-X"                     
[28]"timeBodyGyroscopeJerk-mean()-Y"                    
[29] "timeBodyGyroscopeJerk-mean()-Z"                     
[30]"timeBodyGyroscopeJerk-std()-X"                     
[31] "timeBodyGyroscopeJerk-std()-Y"                      
[32]"timeBodyGyroscopeJerk-std()-Z"                     
[33] "timeBodyAccelerometerMagnitude-mean()"              
[34]"timeBodyAccelerometerMagnitude-std()"              
[35] "timeGravityAccelerometerMagnitude-mean()"           
[36]"timeGravityAccelerometerMagnitude-std()"           
[37] "timeBodyAccelerometerJerkMagnitude-mean()"          
[38]"timeBodyAccelerometerJerkMagnitude-std()"          
[39] "timeBodyGyroscopeMagnitude-mean()"                  
[40]"timeBodyGyroscopeMagnitude-std()"                  
[41] "timeBodyGyroscopeJerkMagnitude-mean()"              
[42]"timeBodyGyroscopeJerkMagnitude-std()"              
[43] "FFTBodyAccelerometer-mean()-X"                
[44]"FFTBodyAccelerometer-mean()-Y"               
[45] "FFTBodyAccelerometer-mean()-Z"               
[46]"FFTBodyAccelerometer-std()-X"                
[47] "FFTBodyAccelerometer-std()-Y"                 
[48]"FFTBodyAccelerometer-std()-Z"                
[49] "FFTBodyAccelerometer-meanFreq()-X"            
[50]"FFTBodyAccelerometer-meanFreq()-Y"           
[51] "FFTBodyAccelerometer-meanFreq()-Z"            
[52]"FFTBodyAccelerometerJerk-mean()-X"           
[53] "FFTBodyAccelerometerJerk-mean()-Y"            
[54]"FFTBodyAccelerometerJerk-mean()-Z"           
[55] "FFTBodyAccelerometerJerk-std()-X"             
[56]"FFTBodyAccelerometerJerk-std()-Y"            
[57] "FFTBodyAccelerometerJerk-std()-Z"             
[58]"FFTBodyAccelerometerJerk-meanFreq()-X"       
[59] "FFTBodyAccelerometerJerk-meanFreq()-Y"        
[60]"FFTBodyAccelerometerJerk-meanFreq()-Z"       
[61] "FFTBodyGyroscope-mean()-X"                    
[62]"FFTBodyGyroscope-mean()-Y"                   
[63] "FFTBodyGyroscope-mean()-Z"                    
[64]"FFTBodyGyroscope-std()-X"                    
[65] "FFTBodyGyroscope-std()-Y"                     
[66]"FFTBodyGyroscope-std()-Z"                    
[67] "FFTBodyGyroscope-meanFreq()-X"                
[68]"FFTBodyGyroscope-meanFreq()-Y"               
[69] "FFTBodyGyroscope-meanFreq()-Z"                
[70]"FFTBodyAccelerometerMagnitude-mean()"        
[71] "FFTBodyAccelerometerMagnitude-std()"          
[72]"FFTBodyAccelerometerMagnitude-meanFreq()"    
[73] "FFTBodyAccelerometerJerkMagnitude-mean()"     
[74]"FFTBodyAccelerometerJerkMagnitude-std()"     
[75] "FFTBodyAccelerometerJerkMagnitude-meanFreq()" 
[76]"FFTBodyGyroscopeMagnitude-mean()"            
[77] "FFTBodyGyroscopeMagnitude-std()"              
[78]"FFTBodyGyroscopeMagnitude-meanFreq()"        
[79] "FFTBodyGyroscopeJerkMagnitude-mean()"         
[80]"FFTBodyGyroscopeJerkMagnitude-std()"         
[81] "FFTBodyGyroscopeJerkMagnitude-meanFreq()"   





