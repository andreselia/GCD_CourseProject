---
output:
  pdf_document: default
---
# Getting and Cleaning Data - Course Project

## The data

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

### Files

The raw data contains these files

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': Subjects id`s.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Subjects id`s.


## Analysis

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Result

The dataset_avg file contains the average of the mean and standard deviation of the measurements for each subject and activity.
This is the list of the variables:

 [1] "subject_id"                                                              
 [2] "activity"                                                                
 [3] "Time-BodyAccelerometerelerometer-Mean()-X"                               
 [4] "Time-BodyAccelerometerelerometer-Mean()-Y"                               
 [5] "Time-BodyAccelerometerelerometer-Mean()-Z"                               
 [6] "Time-GravityAccelerometerelerometer-Mean()-X"                            
 [7] "Time-GravityAccelerometerelerometer-Mean()-Y"                            
 [8] "Time-GravityAccelerometerelerometer-Mean()-Z"                            
 [9] "Time-BodyAccelerometerelerometerJerk-Mean()-X"                           
[10] "Time-BodyAccelerometerelerometerJerk-Mean()-Y"                           
[11] "Time-BodyAccelerometerelerometerJerk-Mean()-Z"                           
[12] "Time-BodyGyroscopescope-Mean()-X"                                        
[13] "Time-BodyGyroscopescope-Mean()-Y"                                        
[14] "Time-BodyGyroscopescope-Mean()-Z"                                        
[15] "Time-BodyGyroscopescopeJerk-Mean()-X"                                    
[16] "Time-BodyGyroscopescopeJerk-Mean()-Y"                                    
[17] "Time-BodyGyroscopescopeJerk-Mean()-Z"                                    
[18] "Time-BodyAccelerometerelerometerMagnitude-Mean()"                        
[19] "Time-GravityAccelerometerelerometerMagnitude-Mean()"                     
[20] "Time-BodyAccelerometerelerometerJerkMagnitude-Mean()"                    
[21] "Time-BodyGyroscopescopeMagnitude-Mean()"                                 
[22] "Time-BodyGyroscopescopeJerkMagnitude-Mean()"                             
[23] "FastFourierTransform-BodyAccelerometerelerometer-Mean()-X"               
[24] "FastFourierTransform-BodyAccelerometerelerometer-Mean()-Y"               
[25] "FastFourierTransform-BodyAccelerometerelerometer-Mean()-Z"               
[26] "FastFourierTransform-BodyAccelerometerelerometerJerk-Mean()-X"           
[27] "FastFourierTransform-BodyAccelerometerelerometerJerk-Mean()-Y"           
[28] "FastFourierTransform-BodyAccelerometerelerometerJerk-Mean()-Z"           
[29] "FastFourierTransform-BodyGyroscopescope-Mean()-X"                        
[30] "FastFourierTransform-BodyGyroscopescope-Mean()-Y"                        
[31] "FastFourierTransform-BodyGyroscopescope-Mean()-Z"                        
[32] "FastFourierTransform-BodyAccelerometerelerometerMagnitude-Mean()"        
[33] "FastFourierTransform-BodyBodyAccelerometerelerometerJerkMagnitude-Mean()"
[34] "FastFourierTransform-BodyBodyGyroscopescopeMagnitude-Mean()"             
[35] "FastFourierTransform-BodyBodyGyroscopescopeJerkMagnitude-Mean()"         
[36] "Time-BodyAccelerometerelerometer-Std()-X"                                
[37] "Time-BodyAccelerometerelerometer-Std()-Y"                                
[38] "Time-BodyAccelerometerelerometer-Std()-Z"                                
[39] "Time-GravityAccelerometerelerometer-Std()-X"                             
[40] "Time-GravityAccelerometerelerometer-Std()-Y"                             
[41] "Time-GravityAccelerometerelerometer-Std()-Z"                             
[42] "Time-BodyAccelerometerelerometerJerk-Std()-X"                            
[43] "Time-BodyAccelerometerelerometerJerk-Std()-Y"                            
[44] "Time-BodyAccelerometerelerometerJerk-Std()-Z"                            
[45] "Time-BodyGyroscopescope-Std()-X"                                         
[46] "Time-BodyGyroscopescope-Std()-Y"                                         
[47] "Time-BodyGyroscopescope-Std()-Z"                                         
[48] "Time-BodyGyroscopescopeJerk-Std()-X"                                     
[49] "Time-BodyGyroscopescopeJerk-Std()-Y"                                     
[50] "Time-BodyGyroscopescopeJerk-Std()-Z"                                     
[51] "Time-BodyAccelerometerelerometerMagnitude-Std()"                         
[52] "Time-GravityAccelerometerelerometerMagnitude-Std()"                      
[53] "Time-BodyAccelerometerelerometerJerkMagnitude-Std()"                     
[54] "Time-BodyGyroscopescopeMagnitude-Std()"                                  
[55] "Time-BodyGyroscopescopeJerkMagnitude-Std()"                              
[56] "FastFourierTransform-BodyAccelerometerelerometer-Std()-X"                
[57] "FastFourierTransform-BodyAccelerometerelerometer-Std()-Y"                
[58] "FastFourierTransform-BodyAccelerometerelerometer-Std()-Z"                
[59] "FastFourierTransform-BodyAccelerometerelerometerJerk-Std()-X"            
[60] "FastFourierTransform-BodyAccelerometerelerometerJerk-Std()-Y"            
[61] "FastFourierTransform-BodyAccelerometerelerometerJerk-Std()-Z"            
[62] "FastFourierTransform-BodyGyroscopescope-Std()-X"                         
[63] "FastFourierTransform-BodyGyroscopescope-Std()-Y"                         
[64] "FastFourierTransform-BodyGyroscopescope-Std()-Z"                         
[65] "FastFourierTransform-BodyAccelerometerelerometerMagnitude-Std()"         
[66] "FastFourierTransform-BodyBodyAccelerometerelerometerJerkMagnitude-Std()" 
[67] "FastFourierTransform-BodyBodyGyroscopescopeMagnitude-Std()"              
[68] "FastFourierTransform-BodyBodyGyroscopescopeJerkMagnitude-Std()"          





