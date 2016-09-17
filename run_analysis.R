
rm(list = ls(all = TRUE))

# Download the dataset


fileurl='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./data/UCI HAR Dataset.zip')){
  dir.create("./data")
  download.file(fileurl, './data/UCI HAR Dataset.zip', mode = 'wb')

}


# unzip dataset into the folder data
unzip(zipfile="./data/UCI HAR Dataset.zip",exdir="./data")

# Reading test tables
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")


# Reading train tables
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Reading activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

#Reading feature vector
features <- read.table("./data/UCI HAR Dataset/features.txt")


# Assigning Column names for test tables
colnames(x_test) <- features[,2]
colnames(y_test) <- "activityID"
colnames(subject_test) <- "subjectID"

# Assigning Column names for train tables
colnames(x_train) <- features[,2]
colnames(y_train) <- "activityID"
colnames(subject_train) <- "subjectID"

# Assigning Column names for activity_labels
colnames(activity_labels) <- c("activityID", "activityType")


# Merging training and test sets to create one datset
merge_test <- cbind(y_test, subject_test, x_test)
merge_train <- cbind(y_train, subject_train, x_train)
allMerged <- rbind(merge_test, merge_train)

# Extracting only the measurements on the mean and standard deviation for each measurement

# Creating a vector to define ID, mean and standard deviation 

allColNames <- colnames(allMerged)

mean_stdDev <-(grepl("activityID" , allColNames) | grepl("subjectID" , allColNames) | 
                 grepl("mean.." , allColNames) | grepl("std.." , allColNames))


# Creating a subset from the Merged dataset(allMerged) for Mean and standard deviation
subsetFromMerged <- allMerged[ , mean_stdDev == TRUE]


# Naming the activities with some descriptive variable names
descriptiveActivityNames <- merge(subsetFromMerged, activity_labels, by='activityID', all.x=TRUE)


# Creating a new independent tidy set with avg of each variable for each activity and subject
indTidySet <- aggregate(. ~subjectID + activityID, descriptiveActivityNames, mean)
indTidySet <- indTidySet[order(indTidySet$subjectID, indTidySet$activityID),]


#Writing the above created independent dataset into a file
write.table(indTidySet, "independentTidySet.txt", row.name=FALSE)




