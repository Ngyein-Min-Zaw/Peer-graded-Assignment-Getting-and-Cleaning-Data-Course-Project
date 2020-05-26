---
title: "Code Book"
output: html_document
---
## Code Book for run_analysis.R

The original data downloaded from the link <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> was processed in the following steps:
1.   Merging the training and the test sets to create one data set.
2.   Extracting only the measurements on the mean and standard deviation for each measurement.
3.   Using descriptive activity names to name the activities in the data set
4.   Appropriately labeling the data set with descriptive activity names.
5.   Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

##   Subjects and measured ariables
-    Subject Number - The ID number of the test subject (1-30)
-    Activities - The types of activities performed when the measurements were taken (1-6)

##   Features: normalized from -1 to 1

-    timeBodyAccelerator Mean-X
-    timeBodyAccelerator Mean-Y
-    timeBodyAccelerator Mean-Z
-    timeBodyAccelerator Standard Deviation-X
-    timeBodyAccelerator Standard Deviation-Y
-    timeBodyAccelerator Standard Deviation-Z
-    timeGravityAccelerator Mean-X
-    timeGravityAccelerator Mean-Y
-    timeGravityAccelerator Mean-Z
-    timeGravityAccelerator Standard Deviation-X
-    timeGravityAccelerator Standard Deviation-Y
-    timeGravityAccelerator Standard Deviation-Z
-    timeBodyAcceleratorJerk Mean-X
-    timeBodyAcceleratorJerk Mean-Y
-    timeBodyAcceleratorJerk Mean-Z
-    timeBodyAcceleratorJerk Standard Deviation-X
-    timeBodyAcceleratorJerk Standard Deviation-Y
-    timeBodyAcceleratorJerk Standard Deviation-Z
-    timeBodyGyroscope Mean-X
-    timeBodyGyroscope Mean-Y
-    timeBodyGyroscope Mean-Z
-    timeBodyGyroscope Standard Deviation-X
-    timeBodyGyroscope Standard Deviation-Y
-    timeBodyGyroscope Standard Deviation-Z
-    timeBodyGyroscopeJerk Mean-X
-    timeBodyGyroscopeJerk Mean-Y
-    timeBodyGyroscopeJerk Mean-Z
-    timeBodyGyroscopeJerk Standard Deviation-X
-    timeBodyGyroscopeJerk Standard Deviation-Y
-    timeBodyGyroscopeJerk Standard Deviation-Z
-    timeBodyAcceleratorMagnitude Mean
-    timeBodyAcceleratorMagnitude Standard Deviation
-    timeGravityAcceleratorMagnitude Mean
-    timeGravityAcceleratorMagnitude Standard Deviation
-    timeBodyAcceleratorJerkMagnitude Mean
-    timeBodyAcceleratorJerkMagnitude Standard Deviation
-    timeBodyGyroscopeMagnitude Mean
-    timeBodyGyroscopeMagnitude Standard Deviation
-    timeBodyGyroscopeJerkMagnitude Mean
-    timeBodyGyroscopeJerkMagnitude Standard Deviation
-    frequencyBodyAccelerator Mean-X
-    frequencyBodyAccelerator Mean-Y
-    frequencyBodyAccelerator Mean-Z
-    frequencyBodyAccelerator Standard Deviation-X
-    frequencyBodyAccelerator Standard Deviation-Y
-    frequencyBodyAccelerator Standard Deviation-Z
-    frequencyBodyAccelerator MeanFreq-X
-    frequencyBodyAccelerator MeanFreq-Y
-    frequencyBodyAccelerator MeanFreq-Z
-    frequencyBodyAcceleratorJerk Mean-X
-    frequencyBodyAcceleratorJerk Mean-Y
-    frequencyBodyAcceleratorJerk Mean-Z
-    frequencyBodyAcceleratorJerk Standard Deviation-X
-    frequencyBodyAcceleratorJerk Standard Deviation-Y
-    frequencyBodyAcceleratorJerk Standard Deviation-Z
-    frequencyBodyAcceleratorJerk MeanFreq-X
-    frequencyBodyAcceleratorJerk MeanFreq-Y
-    frequencyBodyAcceleratorJerk MeanFreq-Z
-    frequencyBodyGyroscope Mean-X
-    frequencyBodyGyroscope Mean-Y
-    frequencyBodyGyroscope Mean-Z
-    frequencyBodyGyroscope Standard Deviation-X
-    frequencyBodyGyroscope Standard Deviation-Y
-    frequencyBodyGyroscope Standard Deviation-Z
-    frequencyBodyGyroscope MeanFreq-X
-    frequencyBodyGyroscope MeanFreq-Y
-    frequencyBodyGyroscope MeanFreq-Z
-    frequencyBodyAcceleratorMagnitude Mean
-    frequencyBodyAcceleratorMagnitude Standard Deviation
-    frequencyBodyAcceleratorMagnitude MeanFreq
-    frequencyBodyBodyAcceleratorJerkMagnitude Mean
-    frequencyBodyBodyAcceleratorJerkMagnitude Standard Deviation
-    frequencyBodyBodyAcceleratorJerkMagnitude MeanFreq
-    frequencyBodyBodyGyroscopeMagnitude Mean
-    frequencyBodyBodyGyroscopeMagnitude Standard Deviation
-    frequencyBodyBodyGyroscopeMagnitude MeanFreq
-    frequencyBodyBodyGyroscopeJerkMagnitude Mean
-    frequencyBodyBodyGyroscopeJerkMagnitude Standard Deviation
-    frequencyBodyBodyGyroscopeJerkMagnitude MeanFreq

##   Output Data
+    Average for all features grouped by test subjects and activities

