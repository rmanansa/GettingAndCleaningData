# Code Book
This code book describes the variables, the data, and the transformations performed to turn the raw data sets into tidy data.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiements have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 seconds and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency componnets, therefore a filter with 0.3 Hz cutoff frequency was used.  From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

For each record it is provided:
- Triaxizal acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identitier of the subject who carried out the experiement.

### Input Data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Description of Input
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Subjects
Individuals identified as subjects number 1 through 30.

### Activity Labels

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

### Variables
"timeBodyAccelerometer-mean()-X"
"timeBodyAccelerometer-mean()-Y"
"timeBodyAccelerometer-mean()-Z"
"timeBodyAccelerometer-std()-X"
"timeBodyAccelerometer-std()-Y"
"timeBodyAccelerometer-std()-Z"
"timeGravityAccelerometer-mean()-X"
"timeGravityAccelerometer-mean()-Y"
"timeGravityAccelerometer-mean()-Z"
"timeGravityAccelerometer-std()-X"
"timeGravityAccelerometer-std()-Y"
"timeGravityAccelerometer-std()-Z"
"timeBodyAccelerometerJerk-mean()-X"
"timeBodyAccelerometerJerk-mean()-Y"
"timeBodyAccelerometerJerk-mean()-Z"
"timeBodyAccelerometerJerk-std()-X"
"timeBodyAccelerometerJerk-std()-Y"
"timeBodyAccelerometerJerk-std()-Z"
"timeBodyGyroscope-mean()-X"
"timeBodyGyroscope-mean()-Y"
"timeBodyGyroscope-mean()-Z"
"timeBodyGyroscope-std()-X"
"timeBodyGyroscope-std()-Y"
"timeBodyGyroscope-std()-Z"
"timeBodyGyroscopeJerk-mean()-X"
"timeBodyGyroscopeJerk-mean()-Y"
"timeBodyGyroscopeJerk-mean()-Z"
"timeBodyGyroscopeJerk-std()-X"
"timeBodyGyroscopeJerk-std()-Y"
"timeBodyGyroscopeJerk-std()-Z"
"timeBodyAccelerometerMagnitude-mean()"
"timeBodyAccelerometerMagnitude-std()"
"timeGravityAccelerometerMagnitude-mean()"
"timeGravityAccelerometerMagnitude-std()"
"timeBodyAccelerometerJerkMagnitude-mean()"
"timeBodyAccelerometerJerkMagnitude-std()"
"timeBodyGyroscopeMagnitude-mean()"
"timeBodyGyroscopeMagnitude-std()"
"timeBodyGyroscopeJerkMagnitude-mean()"
"timeBodyGyroscopeJerkMagnitude-std()"
"frequencyBodyAccelerometer-mean()-X"
"frequencyBodyAccelerometer-mean()-Y"
"frequencyBodyAccelerometer-mean()-Z"
"frequencyBodyAccelerometer-std()-X"
"frequencyBodyAccelerometer-std()-Y"
"frequencyBodyAccelerometer-std()-Z"
"frequencyBodyAccelerometerJerk-mean()-X"
"frequencyBodyAccelerometerJerk-mean()-Y"
"frequencyBodyAccelerometerJerk-mean()-Z"
"frequencyBodyAccelerometerJerk-std()-X"
"frequencyBodyAccelerometerJerk-std()-Y"
"frequencyBodyAccelerometerJerk-std()-Z"
"frequencyBodyGyroscope-mean()-X"
"frequencyBodyGyroscope-mean()-Y"
"frequencyBodyGyroscope-mean()-Z"
"frequencyBodyGyroscope-std()-X"
"frequencyBodyGyroscope-std()-Y"
"frequencyBodyGyroscope-std()-Z"
"frequencyBodyAccelerometerMagnitude-mean()"
"frequencyBodyAccelerometerMagnitude-std()"
"frequencyBodyAccelerometerJerkMagnitude-mean()" "frequencyBodyAccelerometerJerkMagnitude-std()" "frequencyBodyGyroscopeMagnitude-mean()"
"frequencyBodyGyroscopeMagnitude-std()"
"frequencyBodyGyroscopeJerkMagnitude-mean()"
"frequencyBodyGyroscopeJerkMagnitude-std()"

### Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

### Process Taken to Tidy Data
1. Merge the training and test datasets into one dataset.
2. Extract the measurement on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the dataset.
4. Appropriately label the dataset with descriptive variable names.
5. Create a tidy dataset with the average of each variable for each activity and each subject.
