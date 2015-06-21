trainY = read.table("./GaCD/Dataset/train/y_train.txt")
trainX = read.table("./GaCD/Dataset/train/X_train.txt")
testX = read.table("./GaCD//Dataset/test/X_test.txt")
testY = read.table("./GaCD/Dataset/test/y_test.txt")
trainSub = read.table("./GaCD/Dataset/train/subject_train.txt")
testSub = read.table("./GaCD/Dataset/test/subject_test.txt")
features = read.table("./GaCD/Dataset/features.txt")

xData = rbind(trainX, testX)
yData = rbind(trainY, testY)
sub = rbind(trainSub, testSub)

names(sub) = c("Subject")
featIndex = grep("mean\\(\\)|std\\(\\)", features[,2])
data = xData[,featIndex]
names(data) = features[featIndex, 2]

activNames = read.table("./GaCD/Dataset/activity_labels.txt")
activ = activNames[yData[featIndex, 1],2]
names(activ) = "Activity"