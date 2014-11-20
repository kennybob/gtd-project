gtd-project
===========

## Steps completed in run_analysis.R
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## My interpretation of "tidy data" in the context of this data
According to the lectures, the principles of Tidy Data are:
1. Each variable forms a column
2. Each observation forms a row
3. Each table/file stores data about one kind of observation

The way I see it, the data already satisfies these principles. 

We could of course melt the data down to a fomat like this:
   experiment_id, subject, activity, measure_name, measure_value

According to the grading guidelines on the project submission page:
"Either a wide or a long form of the data is acceptable if it meets the tidy data principles of week 1"
   

## My interpretation of mean
The assignment asks that we:
"Extracts only the measurements on the **mean** and standard deviation for each measurement"
According to features_info.txt:
   mean(): Mean value
   std(): Standard deviation
   ..
   meanFreq(): Weighted average of the frequency components to obtain a mean frequency

I deliberately did not include meanFreq measurements. This was my interpretation of what was required.

##Contents of the Repp
1. README.md      = Explains my interpretations and steps for running my script
2. CodeBook.md    = This file describes the variables, the data, and any transformations or work  performed to clean up the data
3. run_analysis.R = This is the R script that processes the data and creates tidyMeans.txt as output.

## Running run_analysis.R
1. Save the script to your working R directory
2. run: source("run_analysis.R"). 
   Bear in mind that some time to read in X_test.txt and X_train.txt (it helps if you have a lot of RAM)
3. It should produce tidyMeans.txt

## What does run_analysis.R do in plain English?
1. Downloads the following file if not found in your working directory:
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
   Unzips the file.
2. Reads the following data files into R data frames:
   "UCI HAR Dataset\\test\\subject_test.txt"
   "UCI HAR Dataset\\test\\X_test.txt"
   "UCI HAR Dataset\\test\\y_test.txt"
   "UCI HAR Dataset\\train\\subject_train.txt"
   "UCI HAR Dataset\\train\\X_train.txt"
   "UCI HAR Dataset\\train\\y_train.txt"
   Note: X_test.txt and X_train.txt are fixed width formatted and are read in using read.fwf. The others were read in using read.table
3. The training and test sets are then combined using rbind() to form the following data frames:
    df_subjects_merged  
    df_measures_merged  
    df_activities_merged   
4. The contents of "UCI HAR Dataset\\features.txt" are read into a data frame (df_features) so that we could extract the columns we are interested in.
5. Then used the grep() function to create an index on df_features. The index shows us where the columns containing mean() and std() are. The index is sorted in order to preserve the order of the columns in features.txt
6. This index is used to extract the columns we want from our merged dataset df_measures_merged. The new cut down data frame is called df_merged_filtered.
7. We replace the activity reference numbers 1-6 using the table presented in activity_labels.txt. This is done by re-creating df_activities_merged$activity as a factor variable.
8. The next step is to appropriately labels the data set with descriptive variable names. Various character replacements were made from the df_features data frame before using colnames to give the merged dataset its column names.
9. cbind() was used to combine the subjects, activities and measure dataframes
10. Finally, the aggregate function was used compute the means before writing the resulting data frame using write.table.
   	

## Reading my tidyMeans.txt
```R
# Download tidyMeans.txt to your working R directory
tdata <- read.table("tidyMeans.txt", header = TRUE)
View(tdata)
```