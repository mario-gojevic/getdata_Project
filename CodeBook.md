# Code Book

## Tidy data set structure

ID fields:
    * activity
         * activity labels: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
    * subjectId
         * participant ID: integer 1:30

Measurement Means (numeric):
    * tBodyAccMeanX
    * tBodyAccMeanY
    * tBodyAccMeanZ
    * tBodyAccStdX
    * tBodyAccStdY
    * tBodyAccStdZ
    * tGravityAccMeanX
    * tGravityAccMeanY
    * tGravityAccMeanZ
    * tGravityAccStdX
    * tGravityAccStdY
    * tGravityAccStdZ
    * tBodyAccJerkMeanX
    * tBodyAccJerkMeanY
    * tBodyAccJerkMeanZ
    * tBodyAccJerkStdX
    * tBodyAccJerkStdY
    * tBodyAccJerkStdZ
    * tBodyGyroMeanX
    * tBodyGyroMeanY
    * tBodyGyroMeanZ
    * tBodyGyroStdX
    * tBodyGyroStdY
    * tBodyGyroStdZ
    * tBodyGyroJerkMeanX
    * tBodyGyroJerkMeanY
    * tBodyGyroJerkMeanZ
    * tBodyGyroJerkStdX
    * tBodyGyroJerkStdY
    * tBodyGyroJerkStdZ
    * tBodyAccMagMean
    * tBodyAccMagStd
    * tGravityAccMagMean
    * tGravityAccMagStd
    * tBodyAccJerkMagMean
    * tBodyAccJerkMagStd
    * tBodyGyroMagMean
    * tBodyGyroMagStd
    * tBodyGyroJerkMagMean
    * tBodyGyroJerkMagStd
    * fBodyAccMeanX
    * fBodyAccMeanY
    * fBodyAccMeanZ
    * fBodyAccStdX
    * fBodyAccStdY
    * fBodyAccStdZ
    * fBodyAccMeanFreqX
    * fBodyAccMeanFreqY
    * fBodyAccMeanFreqZ
    * fBodyAccJerkMeanX
    * fBodyAccJerkMeanY
    * fBodyAccJerkMeanZ
    * fBodyAccJerkStdX
    * fBodyAccJerkStdY
    * fBodyAccJerkStdZ
    * fBodyAccJerkMeanFreqX
    * fBodyAccJerkMeanFreqY
    * fBodyAccJerkMeanFreqZ
    * fBodyGyroMeanX
    * fBodyGyroMeanY
    * fBodyGyroMeanZ
    * fBodyGyroStdX
    * fBodyGyroStdY
    * fBodyGyroStdZ
    * fBodyGyroMeanFreqX
    * fBodyGyroMeanFreqY
    * fBodyGyroMeanFreqZ
    * fBodyAccMagMean
    * fBodyAccMagStd
    * fBodyAccMagMeanFreq
    * fBodyBodyAccJerkMagMean
    * fBodyBodyAccJerkMagStd
    * fBodyBodyAccJerkMagMeanFreq
    * fBodyBodyGyroMagMean
    * fBodyBodyGyroMagStd
    * fBodyBodyGyroMagMeanFreq
    * fBodyBodyGyroJerkMagMean
    * fBodyBodyGyroJerkMagStd
    * fBodyBodyGyroJerkMagMeanFreq
    * angleTBodyAccMeanGravity
    * angleTBodyAccJerkMeangravityMean
    * angleTBodyGyroMeanGravityMean
    * angleTBodyGyroJerkMeanGravityMean
    * angleXGravityMean
    * angleYGravityMean
    * angleZGravityMean

## Tidy data set content

Tidy data set contains the average of each measurement for each activity and each subject.
There are 180 data rows (30 unique subjects and 6 unique activities) and a header with the field names.
The name of the file is "final_data.txt".
