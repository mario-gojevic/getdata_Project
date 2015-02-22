## Getting and Cleaning Data
##
## Course Project


# Download and/or extract
if(!file.exists("./UCI HAR Dataset")) {
        if(!file.exists("./Dataset.zip")) {
                download.file(
                        url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ",
                        destfile = "Dataset.zip", mode="wb")
        }
        unzip("Dataset.zip")
}



# Read activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                       header = FALSE, sep = " ", col.names = c("activityId", "activity"), stringsAsFactors = TRUE)


# 4. Appropriately labels the data set with descriptive variable names.
features <- read.table("./UCI HAR Dataset/features.txt",
                       header = FALSE, sep = " ", col.names = c("rnum", "name"), stringsAsFactors = FALSE)

features$name <- make.names(features$name, unique = TRUE, allow_ = FALSE)
features$name <- gsub("(\\..?)","\\U\\1", features$name, perl=TRUE)       # Capitalize after dots
features$name <- gsub("\\.", "", features$name)                           # Remove dots


# Prepare test data
X_test       <- read.table("./UCI HAR Dataset/test/X_test.txt",
                           header = FALSE, sep = "", col.names = features$name, stringsAsFactors = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",
                           header = FALSE, sep = "", col.names = "subjectId", stringsAsFactors = FALSE)
y_test       <- read.table("./UCI HAR Dataset/test/y_test.txt",
                           header = FALSE, sep = "", col.names = "activityId", stringsAsFactors = FALSE)
test_data    <- cbind(subject_test, y_test, X_test)

# Prepare train data
X_train       <- read.table("./UCI HAR Dataset/train/X_train.txt",
                            header = FALSE, sep = "", col.names = features$name, stringsAsFactors = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",
                            header = FALSE, sep = "", col.names = "subjectId", stringsAsFactors = FALSE)
y_train       <- read.table("./UCI HAR Dataset/train/y_train.txt",
                            header = FALSE, sep = "", col.names = "activityId", stringsAsFactors = FALSE)
train_data    <- cbind(subject_train, y_train, X_train)


# 1. Merges the training and the test sets to create one data set.
# 3. Uses descriptive activity names to name the activities in the data set
all_data <- merge(x = activity_labels, y = rbind(test_data, train_data), by = "activityId")


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
subset_columns <- c(grepl("(subjectId)|(activity)|(Mean)|(Std)", names(all_data)))
subset_columns[1] <- FALSE   # I don't want activityId

subset_data <- subset(all_data, select = subset_columns)


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable
#    for each activity and each subject.
library(dplyr)

grouped_data <- group_by(subset_data, activity, subjectId)
final_data <- summarise_each(grouped_data, funs(mean))

write.table(final_data, file = "final_data.txt", row.names = FALSE)