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
unzip(zipfile="./data/Dataset.zip",exdir="./data")
