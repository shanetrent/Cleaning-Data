library(dplyr)
library(tidyr)


# Merges the training and the test sets to create one data set.

ActTest <- read.table("./test/X_test.txt")
DataTest <- read.table("./test/Y_test.txt")
SubTest <- read.table("./test/subject_test.txt")
ActTrain <- read.table("./train/X_train.txt")
DataTrain <- read.table("./train/Y_train.txt")
SubTrain <- read.table("./train/subject_train.txt")
Act <- read.table("activity_labels.txt")
Feat <- read.table("features.txt")

SubAll <- rbind(SubTrain, SubTest)
ActAll <- rbind(ActTrain, ActTest)
DataAll <- rbind(DataTrain, DataTest)

colnames(Feat) <- c("FeatNum","FeatName")
colnames(Act) <- c("ActNum","ActName")
colnames(DataAll) <- ("ActivityType")
colnames(SubAll) <- ("Subject")
AllSubAct <- cbind(SubAll, DataAll )

DataAll[,1] = Act[DataAll[,1],2]




AllData <- cbind(AllSubAct, ActAll)

#Extracts only the measurements on the mean and standard deviation for each measurement.



## Keep only data we want, and name it human readable



#Uses descriptive activity names to name the activities in the data set




#Appropriately labels the data set with descriptive variable names.


#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
