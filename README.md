---
title: "README.md"
output: html_document
---
## Getting and Cleaning Data

This is a part of coursera online course assignment. The final week assienment ask the students to download and clean data collected from the accelerometers from the Samsung Galaxy S smartphone. The purpose of the assignmen is to demonstrate the ability to prepare tidy data set for later use.

The data can be downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

## About the run_analysis.R

1.   Merges the training and the test sets to create one data set.
     *    Download the data file
     *    Read the data files in train folder and test folder
     *    merge the files to reate one data set.
2.   Extracts only the measurements on the mean and standard deviation for each measurement.
     *    Select the variable containing the words 'mean' and 'std' 
3.   Uses descriptive activity names to name the activities in the data set
     *    Use the previously loaded feature and activity data to assign the coded activity variables in the data set.
4.   Appropriately labels the data set with descriptive variable names.
     *    Rename the hard-to-read variables with the readable descriptive ariable names.
5.   From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
     *    Create second tidy data set containing average values grouped by test subjects and activities.
     *    Write the final output data in txt file

