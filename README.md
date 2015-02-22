# Getting and Cleaning Data - Course Project

## What is input data source?

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## What the "run_analysis.R" script does?

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How to run the script?
	
source run_analysis.R

## What is the output?

Tidy file: "final_data.txt"

## Steps

* Download and/or extract input data
* Read activity labels
* Appropriately label the data set with descriptive variable names.
	* Read features names from "features.txt".
	* Use make.names() to create correct R variable names.
	* Capitalize after dots.
	* Remove dots from labels.
* Prepare test data  - read and cbind.
* Prepare train data - read and cbind.
* Merge the training and the test sets to create one data set.
* Assign descriptive activity names to name the activities in the data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Create a tidy data set with the average of each variable for each activity and each subject.
