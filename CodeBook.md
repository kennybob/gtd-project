Codebook
===========
Data dictionary for file: tidyMeans.txt

## Variables:

1. Variable name: "SubjectID"                     
 * Data type: Numeric(1-30)  
 * Data Source: 
    * test\subject_test.txt 
    * train\subject_train.txt    
2. Variable name: "activity"  
 * Data type: Character   
 * Discrete set: {"WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"}  
 * Data Source: 
    * test\y_test.txt 
    * train\y_train.txt 
  
 * Transformed using: Mapping provided in activity_labels.txt    
 
##### Each of the following variables have as attributes:
 * Data type: Numeric
 * Range: normalized and bounded within [-1,1]
 * Data Source: 
    * test\X_test.txt
    * train\X_train.txt 

| Variable #    | Variable name                               | Original name in features.txt     |
| ------------- |---------------------------------------------| ----------------------------------|
| 3             | "Time_Body_Accelerometer_mean_X"            | "tBodyAcc-mean()-X"               |
| 4             | "Time_Body_Accelerometer_mean_Y"            | "tBodyAcc-mean()-Y"               |
| 5             | "Time_Body_Accelerometer_mean_Z"            | "tBodyAcc-mean()-Z"               |
| 6             | "Time_Body_Accelerometer_std_X"             | "tBodyAcc-std()-X"                |
| 7             | "Time_Body_Accelerometer_std_Y"             | "tBodyAcc-std()-Y"                |
| 8             | "Time_Body_Accelerometer_std_Z"             | "tBodyAcc-std()-Z"                |
| 9             | "Time_Gravity_Accelerometer_mean_X"         | "tGravityAcc-mean()-X"            |
| 10            | "Time_Gravity_Accelerometer_mean_Y"         | "tGravityAcc-mean()-Y"            |
| 11            | "Time_Gravity_Accelerometer_mean_Z"         | "tGravityAcc-mean()-Z"            |
| 12            | "Time_Gravity_Accelerometer_std_X"          | "tGravityAcc-std()-X"             |
| 13            | "Time_Gravity_Accelerometer_std_Y"          | "tGravityAcc-std()-Y"             |
| 14            | "Time_Gravity_Accelerometer_std_Z"          | "tGravityAcc-std()-Z"             |
| 13            | "Time_Body_Accelerometer_Jerk_mean_X"       | "tBodyAccJerk-mean()-X"           |
| 16            | "Time_Body_Accelerometer_Jerk_mean_Y"       | "tBodyAccJerk-mean()-Y"           |
| 17            | "Time_Body_Accelerometer_Jerk_mean_Z"       | "tBodyAccJerk-mean()-Z"           |
| 18            | "Time_Body_Accelerometer_Jerk_std_X"        | "tBodyAccJerk-std()-X"            |
| 19            | "Time_Body_Accelerometer_Jerk_std_Y"        | "tBodyAccJerk-std()-Y"            |
| 20            | "Time_Body_Accelerometer_Jerk_std_Z"        | "tBodyAccJerk-std()-Z"            |
| 21            | "Time_Body_Gyroscope_mean_X"                | "tBodyGyro-mean()-X"              |
| 22            | "Time_Body_Gyroscope_mean_Y"                | "tBodyGyro-mean()-Y"              |
| 23            | "Time_Body_Gyroscope_mean_Z"                | "tBodyGyro-mean()-Z"              |
| 24            | "Time_Body_Gyroscope_std_X"                 | "tBodyGyro-std()-X"               |
| 25            | "Time_Body_Gyroscope_std_Y"                 | "tBodyGyro-std()-Y"               |
| 26            | "Time_Body_Gyroscope_std_Z"                 | "tBodyGyro-std()-Z"               |
| 27            | "Time_Body_Gyroscope_Jerk_mean_X"           | "tBodyGyroJerk-mean()-X"          |
| 28            | "Time_Body_Gyroscope_Jerk_mean_Y"           | "tBodyGyroJerk-mean()-Y"          |
| 29            | "Time_Body_Gyroscope_Jerk_mean_Z"           | "tBodyGyroJerk-mean()-Z"          |
| 30            | "Time_Body_Gyroscope_Jerk_std_X"            | "tBodyGyroJerk-std()-X"           |
| 31            | "Time_Body_Gyroscope_Jerk_std_Y"            | "tBodyGyroJerk-std()-Y"           |
| 32            | "Time_Body_Gyroscope_Jerk_std_Z"            | "tBodyGyroJerk-std()-Z"           |
| 33            | "Time_Body_Accelerometer_Mag_mean"          | "tBodyAccMag-mean()"              |
| 34            | "Time_Body_Accelerometer_Mag_std"           | "tBodyAccMag-std()"               |
| 35            | "Time_Gravity_Accelerometer_Mag_mean"       | "tGravityAccMag-mean()"           |
| 36            | "Time_Gravity_Accelerometer_Mag_std"        | "tGravityAccMag-std()"            |
| 37            | "Time_Body_Accelerometer_JerkMag_mean"      | "tBodyAccJerkMag-mean()"          |
| 38            | "Time_Body_Accelerometer_JerkMag_std"       | "tBodyAccJerkMag-std()"           |
| 39            | "Time_Body_Gyroscope_Mag_mean"              | "tBodyGyroMag-mean()"             |
| 40            | "Time_Body_Gyroscope_Mag_std"               | "tBodyGyroMag-std()"              |
| 41            | "Time_Body_Gyroscope_JerkMag_mean"          | "tBodyGyroJerkMag-mean()"         |
| 42            | "Time_Body_Gyroscope_JerkMag_std"           | "tBodyGyroJerkMag-std()"          |
| 43            | "Frequency_Body_Accelerometer_mean_X"       | "fBodyAcc-mean()-X"               |
| 44            | "Frequency_Body_Accelerometer_mean_Y"       | "fBodyAcc-mean()-Y"               |
| 45            | "Frequency_Body_Accelerometer_mean_Z"       | "fBodyAcc-mean()-Z"               |
| 46            | "Frequency_Body_Accelerometer_std_X"        | "fBodyAcc-std()-X"                |
| 47            | "Frequency_Body_Accelerometer_std_Y"        | "fBodyAcc-std()-Y"                |
| 48            | "Frequency_Body_Accelerometer_std_Z"        | "fBodyAcc-std()-Z"                |
| 49            | "Frequency_Body_Accelerometer_Jerk_mean_X"  | "fBodyAccJerk-mean()-X"           |
| 50            | "Frequency_Body_Accelerometer_Jerk_mean_Y"  | "fBodyAccJerk-mean()-Y"           |
| 51            | "Frequency_Body_Accelerometer_Jerk_mean_Z"  | "fBodyAccJerk-mean()-Z"           |
| 52            | "Frequency_Body_Accelerometer_Jerk_std_X"   | "fBodyAccJerk-std()-X"            |
| 53            | "Frequency_Body_Accelerometer_Jerk_std_Y"   | "fBodyAccJerk-std()-Y"            |
| 54            | "Frequency_Body_Accelerometer_Jerk_std_Z"   | "fBodyAccJerk-std()-Z"            |
| 55            | "Frequency_Body_Gyroscope_mean_X"           | "fBodyGyro-mean()-X"              |
| 56            | "Frequency_Body_Gyroscope_mean_Y"           | "fBodyGyro-mean()-Y"              |
| 57            | "Frequency_Body_Gyroscope_mean_Z"           | "fBodyGyro-mean()-Z"              |
| 58            | "Frequency_Body_Gyroscope_std_X"            | "fBodyGyro-std()-X"               |
| 59            | "Frequency_Body_Gyroscope_std_Y"            | "fBodyGyro-std()-Y"               |
| 60            | "Frequency_Body_Gyroscope_std_Z"            | "fBodyGyro-std()-Z"               |
| 61            | "Frequency_Body_Accelerometer_Mag_mean"     | "fBodyAccMag-mean()"              |
| 62            | "Frequency_Body_Accelerometer_Mag_std"      | "fBodyAccMag-std()"               |
| 63            | "Frequency_Body_Accelerometer_JerkMag_mean" | "fBodyBodyAccJerkMag-mean()"      |
| 64            | "Frequency_Body_Accelerometer_JerkMag_std"  | "fBodyBodyAccJerkMag-std()"       |
| 65            | "Frequency_Body_Gyroscope_Mag_mean"         | "fBodyBodyGyroMag-mean()"         |
| 66            | "Frequency_Body_Gyroscope_Mag_std"          | "fBodyBodyGyroMag-std()"          |
| 67            | "Frequency_Body_Gyroscope_JerkMag_mean"     | "fBodyBodyGyroJerkMag-mean()"     |
| 68            | "Frequency_Body_Gyroscope_JerkMag_std"      | "fBodyBodyGyroJerkMag-std()"      |