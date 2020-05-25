
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#check directory and existing files. if not exist, create dir and download the data file.
if(!file.exists("./data")){dir.create("./data"); print("dir created")}

dataurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipdata <- "./data/UCI HAR Dataset.zip"

if(!file.exists(zipdata)){
     download.file(dataurl, zipdata)
}

#unzip the zipped data
if (!file.exists("./data/UCI HAR Dataset")) { 
     unzip(zipdata) 
}
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#check unzipped data files
dir("./data/UCI HAR Dataset/train")
dir("./data/UCI HAR Dataset/test")
dir("./data/UCI HAR Dataset")
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#You should create one R script called run_analysis.R that does the following.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#0.1 read feature and activities data
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("code_num", "activity"))
features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("n","features"))

#0.2 Read the files in train folder
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = features$features)
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "code_num")
S_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")

#0.3 Read the files in train folder
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = features$features)
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "code_num")
S_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#1. Merges the training and the test sets to create one data set.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
x <- rbind(x_train, x_test)
y <- rbind(y_train,y_test)
Subject <- rbind(S_train, S_test)
merged <- cbind(Subject, y, x)

#to save memory
rm(x_train,y_train,S_train, x_test,y_test,S_test, x, y, Subject)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
library(dplyr)
tidydataset <- merged %>% select(Subject, code_num, contains("mean"), contains("std"))
#tidydataset$code_num
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#3. Uses descriptive activity names to name the activities in the data set
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
tidydataset$code_num <- factor(activities[tidydataset$code_num, 2])
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#4. Appropriately labels the data set with descriptive variable names.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
tidydataset <- tidydataset%>% rename("Activity"="code_num")
names(tidydataset)<-gsub("Acc", "Accelerometer", names(tidydataset))
names(tidydataset)<-gsub("Gyro", "Gyroscope", names(tidydataset))
names(tidydataset)<-gsub("BodyBody", "Body", names(tidydataset))
names(tidydataset)<-gsub("Mag", "Magnitude", names(tidydataset))
names(tidydataset)<-gsub("^t", "Time", names(tidydataset))
names(tidydataset)<-gsub("^f", "Frequency", names(tidydataset))
names(tidydataset)<-gsub("tBody", "TimeBody", names(tidydataset))
names(tidydataset)<-gsub("-mean()", "Mean", names(tidydataset), ignore.case = TRUE)
names(tidydataset)<-gsub("-std()", "STD", names(tidydataset), ignore.case = TRUE)
names(tidydataset)<-gsub("-freq()", "Frequency", names(tidydataset), ignore.case = TRUE)
names(tidydataset)<-gsub("angle", "Angle", names(tidydataset))
names(tidydataset)<-gsub("gravity", "Gravity", names(tidydataset))
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#

readyData <- tidydataset %>%
     group_by(Subject, Activity) %>%
     summarise_all(funs(mean))
write.table(readyData, "./data/FinalData.txt", row.name=FALSE)
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
