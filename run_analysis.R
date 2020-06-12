#Getting and Cleaning Data Course Project

#Dataset reference:
#[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
#Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
#International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


setwd("C:/Users/betty/OneDrive/Documents/R/UCI HAR Dataset")

#read the subject_test.txt file which contains the Each row identifies the test subject 
#who performed the activity for each window sample. Its range is from 1 to 30. 
subTest<- read.table("./test/subject_test.txt", header=FALSE)

#read the X_test.txt file which conatins the X test set.
testx<-read.table("./test/X_test.txt", header=FALSE)

#read the X_test.txt file which conatins the X test set.
testy<-read.table("./test/y_test.txt", header=FALSE)


#read the subject_train.txt file which contains the Each row identifies the subject 
#who performed the activity for each window sample. Its range is from 1 to 30. 
subTrain<- read.table("./train/subject_train.txt", header=FALSE)

#read the X_test.txt file which conatins the X test set.
trainx<-read.table("./train/X_train.txt", header=FALSE)

#read the X_test.txt file which conatins the X test set.
trainy<-read.table("./train/y_train.txt", header=FALSE)


#merge the subject data
subject<-rbind(subTest, subTrain)

#merge the y data
yData<-rbind(trainy, testy)

#merge the X data
xData<-rbind(trainx, testx)



#add the names
names(subject)<-c("subject")
names(yData)<- c("activity")
featuresNames <- read.table("./features.txt",header=FALSE)
names(xData)<- featuresNames$V2

#cominbe all of the data
yNames <- cbind(subject, yData)
allData <- cbind(xData, yNames)

#narrow down data to desired means and standard deviation
subsetFeatureNames<-featuresNames$V2[grep("mean\\(\\)|std\\(\\)", featuresNames$V2)]
#narrow again 
subsetNames<-c(as.character(subsetFeatureNames), "subject", "activity" )
allData<-subset(allData,select=subsetNames)

#read the activity labels file
activityLabels<-read.table("./activity_labels.txt",header=FALSE)
activityLabels[,2] <- as.character(activityLabels[,2])

#factor the activity labels
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])

#add descriptive labels
names(allData)<-gsub("^t", "time", names(allData))
names(allData)<-gsub("^f", "frequency", names(allData))
names(allData)<-gsub("Acc", "Accelerometer", names(allData))
names(allData)<-gsub("Gyro", "Gyroscope", names(allData))
names(allData)<-gsub("Mag", "Magnitude", names(allData))
names(allData)<-gsub("BodyBody", "Body", names(allData))

#create the tidy data set
tidyData<-aggregate(. ~subject + activity, allData, mean)
tidyData<-tidyData[order(tidyData$subject,tidyData$activity),]
write.table(tidyData, file = "tidydata.txt",row.name=FALSE)