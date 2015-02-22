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



















* First, unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and rename the folder with "data".
* Make sure the folder "data" and the run_analysis.R script are both in the current working directory.
* Second, use source("run_analysis.R") command in RStudio. 
* Third, you will find two output files are generated in the current working directory:
  - merged_data.txt (7.9 Mb): it contains a data frame called cleanedData with 10299*68 dimension.
  - data_with_means.txt (220 Kb): it contains a data frame called result with 180*68 dimension.
* Finally, use data <- read.table("data_with_means.txt") command in RStudio to read the file. Since we are required to get the average of each variable for each activity and each subject, and there are 6 activities in total and 30 subjects in total, we have 180 rows with all combinations for each of the 66 features. 
