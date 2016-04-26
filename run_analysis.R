if (!file.exists("./data")){dir.create("./data")}
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipUrl, destfile = "./data/Dataset.zip",method="curl")
unzip("./data/Dataset.zip")
## Merging of data sets
features <- read.table("./data/UCI HAR Dataset/features.txt")
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = features[,2])
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = features[,2])
mergedX <- rbind(X_test, X_train)
## Getting Mean and standard deviation measurements
featureMeanStd <- features[grep("(mean|std)\\(", features[,2]),]
meanAndStd <- mergedX[, featureMeanStd[,1]]

## Use descriptive activity names to name the activities in the data set
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = c('activities'))
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = c('activities'))
mergedY <- rbind(y_test, y_train)

activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

for (i in 1:nrow(activity_labels)) {
  key <- as.numeric(activity_labels[i,1])
  val <- as.character(activity_labels[i,2])
  mergedY[mergedY$activities == key, ] <- val
}

## Put appropriate labels to the data set with descriptive activity names
##labeledX <- cbind(mergedY, mergedX)
#labeledMeanAndStd <- cbind(mergedY, meanAndStd)
names(meanAndStd) = gsub('\\(|\\)',"",names(meanAndStd), perl = TRUE)
names(meanAndStd) = gsub('Acc',"Acceleration",names(meanAndStd))
names(meanAndStd) <- gsub('GyroJerk',"AngularAcceleration",names(meanAndStd))
names(meanAndStd) <- gsub('Gyro',"AngularSpeed",names(meanAndStd))
names(meanAndStd) <- gsub('Mag',"Magnitude",names(meanAndStd))
names(meanAndStd) <- gsub('^t',"TimeDomain.",names(meanAndStd))
names(meanAndStd) <- gsub('^f',"FrequencyDomain.",names(meanAndStd))


## Create another independent tidy data set with the average of each 
## variable for each activity and each subject.
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = c('Subject'))
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = c('Subject'))
mergedSubjectTestTrain <- rbind(testSubject, trainSubject)
tidyData <- aggregate(meanAndStd, by = list(Activities = mergedY[,1], Subject = mergedSubjectTestTrain[,1]), mean)
write.table(tidyData, file = "./data/GettingAndCleaningData/tidy_data.txt", row.names = FALSE)