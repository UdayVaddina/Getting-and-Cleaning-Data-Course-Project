library(plyr)


rm(list = ls(all = TRUE))

# Download the dataset

library(data.table)
fileurl='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./UCI HAR Dataset.zip')){
  download.file(fileurl, './UCI HAR Dataset.zip', mode = 'wb')

}