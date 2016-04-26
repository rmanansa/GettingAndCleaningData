# Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate one's ability to collect, work with, and clean a data set.  The goal is to prepare tidy data that can be used for later analysis.

This assignment requires an R script, run_analysis.R, and the data set that needs to be converted to tidy data.

The run_analysis.R will do the following:

1. Merges the traiing and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with the descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The dataset includes the following files:

1. features.txt -- a plain text file that lists all the features used in the experiment.
2. features_info.txt -- file which shows information about the variables used on the feature vector.
3. activity_labels.txt -- file contains data that inks the class labels with their activity name.
4. train/X_train.txt -- plain text file that contains the training data set.
5. train/y_train.txt -- file which contains the training labels.
6. test/X_test.txt -- file that has the test data set.
7. test/y_test.txt -- text file which has the test labels.
8. train/subject_train.txt -- Each row of this file identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. This file is available for the train and test data.
9. train/Inertial Signals/total_acc_x_train_txt -- The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.  Every row shows a 128 element vector.  The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
10. train/Inertial Signals/body_acc_x_train.txt -- The body acceleration signal obtained by subtracting the gravity from the total acceleration.
11. train/Inertial Signals/body_gyro_x_train.txt -- The angular velocity vector measured by the gyroscope for each window sample.  The units are radians/second.

Notes:
- Features are normalized and bounded within [-1,1]
- Each feature vector is a row on the text file.
