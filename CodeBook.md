This document explains how the script(run_analysis.R) works

Summary Of the project:
The purpose of this project is to clean a data set.The goal is to prepare tidy data
that can be used for later analysis.

This data is linked on the coursera's "Getting and Cleaning data" course; this data 
is colleceted from the accelerometers from the Galaxy S smartphone.

Data is available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More info about the data can be obtained here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
   

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
	
