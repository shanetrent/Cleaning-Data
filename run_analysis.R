library(dplyr)
library(tidyr)


#Reading in Files into Variable Names.

ActTest <- read.table("./test/X_test.txt")
DataTest <- read.table("./test/Y_test.txt")
SubTest <- read.table("./test/subject_test.txt")
ActTrain <- read.table("./train/X_train.txt")
DataTrain <- read.table("./train/Y_train.txt")
SubTrain <- read.table("./train/subject_train.txt")
Act <- read.table("activity_labels.txt")
Feat <- read.table("features.txt")

#Combining Subject,Activity and Training data into their own Variables.

SubAll <- rbind(SubTrain, SubTest)
ActAll <- rbind(ActTrain, ActTest)
DataAll <- rbind(DataTrain, DataTest)

#ASsigning Column Names to each Variable set.

colnames(Feat) <- c("FeatNum","FeatName")
colnames(Act) <- c("ActNum","ActName")
colnames(DataAll) <- ("ActivityType")
colnames(SubAll) <- ("Subject")
colnames(ActAll) <- Feat$FeatName

#Assigning Activity Names to each related category in the DataAll set of variables.

DataAll[,1] = Act[DataAll[,1],2]

#Combine Subject and Training Data into one set.

AllSubAct <- cbind(SubAll, DataAll )

#Combine above set with Activity to create just one dataset with Subject and ActivityType Labels.

AllData <- cbind(AllSubAct, ActAll)

#AllData should be Tidy Dataset with readable headers and merged data.




