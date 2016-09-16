library(plyr)


rm(list = ls(all = TRUE))

# Download the dataset

library(data.table)
fileurl='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./data/UCI HAR Dataset.zip')){
  dir.create("./data")
  download.file(fileurl, './data/UCI HAR Dataset.zip', mode = 'wb')

}


# unzip dataset into the folder data
unzip(zipfile="./data/UCI HAR Dataset.zip",exdir="./data")


# Reading train tables
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")


# Reading test tables
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Reading activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

#Reading feature vector
features <- read.table("./data/UCI HAR Dataset/features.txt")