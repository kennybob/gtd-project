#### Script name run_analysis.R
#
# Set working directory before running this script

# Download data if it doesn't exist
fileUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("run_analysis_data.zip")) {		
		download.file(fileUrl, destfile = "run_analysis_data.zip", mode="wb")
		unzip("run_analysis_data.zip")
}
	

#read the test data set into a data frame
    df_subject_test <- read.table(file="UCI HAR Dataset\\test\\subject_test.txt"
                       , head = FALSE, colClasses = rep("numeric", 1))
					   
    df_X_test <- read.fwf(file="UCI HAR Dataset\\test\\X_test.txt",
                        , head = FALSE, widths=rep(16, 561), colClasses = rep("numeric", 561)
    					, buffersize=25)
						
    df_y_test       <- read.table(file="UCI HAR Dataset\\test\\y_test.txt"
                        , head = FALSE, colClasses = rep("numeric", 1))
    						

#read the training data set into a data frame
    df_subject_train <- read.table(file="UCI HAR Dataset\\train\\subject_train.txt"
                       , head = FALSE, colClasses = rep("numeric", 1))
					   
    df_X_train <- read.fwf(file="UCI HAR Dataset\\train\\X_train.txt",
                        , head = FALSE, widths=rep(16, 561), colClasses = rep("numeric", 561)
    					, buffersize=25)
						
    df_y_train       <- read.table(file="UCI HAR Dataset\\train\\y_train.txt"
                        , head = FALSE, colClasses = rep("numeric", 1))
					

##1. Merge the training and the test sets to create one data set.

    df_subjects_merged   <- rbind(df_subject_train, df_subject_test)
    df_measures_merged   <- rbind(df_X_train      , df_X_test      )
    df_activities_merged <- rbind(df_y_train      , df_y_test      )


##2. Extracts only the measurements on the mean and standard deviation for each measurement.

    # We can read the names of the variables from: features.txt
    df_features <- read.table(file="UCI HAR Dataset\\features.txt"
                            , head = FALSE
    						, colClasses = c("numeric", "character"))
							
    colnames(df_features) <- c("index","measurement")
        
    # The grep command will search for strings that contain some character string, in this case "mean()" and "std()"
    #     The "fixed = TRUE" option was used to invoke exact string matching on all characters
    features_index <-
       c(grep("mean()", df_features$measurement, fixed = TRUE)
        ,grep("std()" , df_features$measurement, fixed = TRUE))
    
    
    # We want the column list order from features.txt to be preserved. Sorting the index vector achieves this.
    # (unique is not strictly necessary in this case since there are no measurements that contain both strings) 
    features_index <- sort(unique(features_index))		 
    
    # Use this index to select the columns we are interested in. 
    # Store this smaller dataframe in new dataframe "df_merged_filtered"
    df_merged_filtered <- df_measures_merged[,features_index]
  
  
## 3. Uses descriptive activity names to name the activities in the data set

# Use activity names instead of 1,2,3,4,5,6
colnames(df_activities_merged) <- "activity"

df_activities_merged$activity <-  factor(df_activities_merged$activity
   , labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS"
                , "SITTING", "STANDING", "LAYING"))

##4. Appropriately labels the data set with descriptive variable names. 

v <- df_features[features_index, "measurement"]

v <- gsub(pattern = "BodyBody", replacement= "Body"            , x =v, fixed=TRUE)
v <- gsub(pattern = "tBody"   , replacement= "Time_Body_"      , x =v, fixed=TRUE)
v <- gsub(pattern = "fBody"   , replacement= "Frequency_Body_" , x =v, fixed=TRUE)
v <- gsub(pattern = "tGravity", replacement= "Time_Gravity_"   , x =v, fixed=TRUE)
v <- gsub(pattern = "Acc"     , replacement= "Accelerometer_"  , x =v, fixed=TRUE)
v <- gsub(pattern = "Gyro"    , replacement= "Gyroscope_"      , x =v, fixed=TRUE)
v <- gsub(pattern = "mean()"  , replacement= "mean"            , x =v, fixed=TRUE)
v <- gsub(pattern = "std()"   , replacement= "std"             , x =v, fixed=TRUE)
v <- gsub(pattern = "-"       , replacement= "_"               , x =v, fixed=TRUE)
v <- gsub(pattern = "__"      , replacement= "_"               , x =v, fixed=TRUE)


colnames(df_subjects_merged) <- "SubjectID"
colnames(df_merged_filtered) <- v

#5. From the data set in step 4, creates a second, independent tidy data set with the average 
##  of each variable for each activity and each subject.					

tidyData <- cbind(df_subjects_merged, df_activities_merged, df_merged_filtered)
tidyMeans <- aggregate( tidyData[,3:68], tidyData[,1:2], FUN = mean )

write.table(tidyMeans, file = "tidyMeans.txt", row.names=FALSE)