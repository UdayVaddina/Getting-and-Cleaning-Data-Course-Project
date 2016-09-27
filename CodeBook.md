This document explains the data that is used here and how the script(run_analysis.R) works

# Summary Of the project:
The purpose of this project is to clean a data set.The goal is to prepare tidy data that can be used for later analysis.

This data is linked on the coursera's "Getting and Cleaning data" course; this data is colleceted from the accelerometers from the Galaxy S smartphone.

Data is available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More info about the data can be obtained here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
   

   
# Background of the data

Subject - It is the test ID of the subject. There are a total of 30 subjects(volunteers) with age bracket 19-48.
Activities - Every subject performs six activities that are mentioned below(activity_types) and the activityID ranges from 1 to 6.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
   
#  The following are the activity labels. This represent the activity ID and the corresponding activity the subject is performing.
1 - Walking
2 – Walking Upstairs
3 - Walking Downstairs
4 - Sitting
5 - Standing
6 - Laying
  
# 
[1] "activityID"                                         "subjectID"                                         
 [3] "timeBodyAccelerometer-mean()-X"                     "timeBodyAccelerometer-mean()-Y"                    
 [5] "timeBodyAccelerometer-mean()-Z"                     "timeBodyAccelerometer-std()-X"                     
 [7] "timeBodyAccelerometer-std()-Y"                      "timeBodyAccelerometer-std()-Z"                     
 [9] "timeGravityAccelerometer-mean()-X"                  "timeGravityAccelerometer-mean()-Y"                 
[11] "timeGravityAccelerometer-mean()-Z"                  "timeGravityAccelerometer-std()-X"                  
[13] "timeGravityAccelerometer-std()-Y"                   "timeGravityAccelerometer-std()-Z"                  
[15] "timeBodyAccelerometerJerk-mean()-X"                 "timeBodyAccelerometerJerk-mean()-Y"                
[17] "timeBodyAccelerometerJerk-mean()-Z"                 "timeBodyAccelerometerJerk-std()-X"                 
[19] "timeBodyAccelerometerJerk-std()-Y"                  "timeBodyAccelerometerJerk-std()-Z"                 
[21] "timeBodyGyroscope-mean()-X"                         "timeBodyGyroscope-mean()-Y"                        
[23] "timeBodyGyroscope-mean()-Z"                         "timeBodyGyroscope-std()-X"                         
[25] "timeBodyGyroscope-std()-Y"                          "timeBodyGyroscope-std()-Z"                         
[27] "timeBodyGyroscopeJerk-mean()-X"                     "timeBodyGyroscopeJerk-mean()-Y"                    
[29] "timeBodyGyroscopeJerk-mean()-Z"                     "timeBodyGyroscopeJerk-std()-X"                     
[31] "timeBodyGyroscopeJerk-std()-Y"                      "timeBodyGyroscopeJerk-std()-Z"                     
[33] "timeBodyAccelerometerMagnitude-mean()"              "timeBodyAccelerometerMagnitude-std()"              
[35] "timeGravityAccelerometerMagnitude-mean()"           "timeGravityAccelerometerMagnitude-std()"           
[37] "timeBodyAccelerometerJerkMagnitude-mean()"          "timeBodyAccelerometerJerkMagnitude-std()"          
[39] "timeBodyGyroscopeMagnitude-mean()"                  "timeBodyGyroscopeMagnitude-std()"                  
[41] "timeBodyGyroscopeJerkMagnitude-mean()"              "timeBodyGyroscopeJerkMagnitude-std()"              
[43] "frequencyBodyAccelerometer-mean()-X"                "frequencyBodyAccelerometer-mean()-Y"               
[45] "frequencyBodyAccelerometer-mean()-Z"                "frequencyBodyAccelerometer-std()-X"                
[47] "frequencyBodyAccelerometer-std()-Y"                 "frequencyBodyAccelerometer-std()-Z"                
[49] "frequencyBodyAccelerometer-meanFreq()-X"            "frequencyBodyAccelerometer-meanFreq()-Y"           
[51] "frequencyBodyAccelerometer-meanFreq()-Z"            "frequencyBodyAccelerometerJerk-mean()-X"           
[53] "frequencyBodyAccelerometerJerk-mean()-Y"            "frequencyBodyAccelerometerJerk-mean()-Z"           
[55] "frequencyBodyAccelerometerJerk-std()-X"             "frequencyBodyAccelerometerJerk-std()-Y"            
[57] "frequencyBodyAccelerometerJerk-std()-Z"             "frequencyBodyAccelerometerJerk-meanFreq()-X"       
[59] "frequencyBodyAccelerometerJerk-meanFreq()-Y"        "frequencyBodyAccelerometerJerk-meanFreq()-Z"       
[61] "frequencyBodyGyroscope-mean()-X"                    "frequencyBodyGyroscope-mean()-Y"                   
[63] "frequencyBodyGyroscope-mean()-Z"                    "frequencyBodyGyroscope-std()-X"                    
[65] "frequencyBodyGyroscope-std()-Y"                     "frequencyBodyGyroscope-std()-Z"                    
[67] "frequencyBodyGyroscope-meanFreq()-X"                "frequencyBodyGyroscope-meanFreq()-Y"               
[69] "frequencyBodyGyroscope-meanFreq()-Z"                "frequencyBodyAccelerometerMagnitude-mean()"        
[71] "frequencyBodyAccelerometerMagnitude-std()"          "frequencyBodyAccelerometerMagnitude-meanFreq()"    
[73] "frequencyBodyAccelerometerJerkMagnitude-mean()"     "frequencyBodyAccelerometerJerkMagnitude-std()"     
[75] "frequencyBodyAccelerometerJerkMagnitude-meanFreq()" "frequencyBodyGyroscopeMagnitude-mean()"            
[77] "frequencyBodyGyroscopeMagnitude-std()"              "frequencyBodyGyroscopeMagnitude-meanFreq()"        
[79] "frequencyBodyGyroscopeJerkMagnitude-mean()"         "frequencyBodyGyroscopeJerkMagnitude-std()"         
[81] "frequencyBodyGyroscopeJerkMagnitude-meanFreq()"     "activityType"  
   
   
# R Script(run_analysis.R)

As part of the course project R Script does the following 5 steps:

1. Merges the training and the test sets to create one data set.
	1.1 - Download the files from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	1.2 - Unzip the data 
	1.3 - Read the train and test tables, feature vector & activity labels
	1.4 - Assign column names for all the tables
	1.5 - Merge the training and the test set to create one union dataset.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 
	2.1 - Creating a vector(mean_stdDev) to define ID, mean and standard deviation
	2.2 - Creating a subset(subsetFromMerged) from the Merged dataset for Mean and standard deviation

3. Using descriptive activity names to name the activities in the data set
		
4. Naming the activities with some descriptive variable names

5. Creating a new independent tidy set(indTidySet) with avg of each variable for each activity and subject
	5.1 - Writing the above created independent dataset(independentTidySet) into a file
	
