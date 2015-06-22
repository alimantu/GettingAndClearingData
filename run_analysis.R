#Reading all the used datasets from train and test
trainY = read.table("./Dataset/train/y_train.txt")
trainX = read.table("./Dataset/train/X_train.txt")
testX = read.table("./Dataset/test/X_test.txt")
testY = read.table("./Dataset/test/y_test.txt")
trainSub = read.table("./Dataset/train/subject_train.txt")
testSub = read.table("./Dataset/test/subject_test.txt")
features = read.table("./Dataset/features.txt")

#Merging the test and train data
xData = rbind(trainX, testX)
yData = rbind(trainY, testY)
sub = rbind(trainSub, testSub)

#Adding the colnames to the Subject dataset
names(sub) = c("Subject")

#Finding index of the future using features on the mean and standard deviation
featIndex = grep("mean\\(\\)|std\\(\\)", features[,2])

#Assign the data with mean and standard deviation to the data variable, setting the colnames
data = xData[,featIndex]
names(data) = features[featIndex, 2]

#Reading the labels of the activitys, changing the activity index to the activity name, 
#setting the name of activity names column to the "Activity"   
activNames = read.table("./Dataset/activity_labels.txt")
yData[,1]  = activNames[yData[, 1], 2]
names(yData) = c("Activity")

#Creating the tidy data set
TData = cbind(sub, yData, data)

#Creating the data set with average of each variable dor each activity and each subject
meltData = melt(TData, id = c("Subject", "Activity"), measure.vars = features[featIndex, 2])
TMData = dcast(meltData, Activity + Subject ~ variable, mean)

#Writing datasets to the text files
write.table(TData, "./TidyData.txt")
write.table(TMData, "./MeltedTidyData.txt")