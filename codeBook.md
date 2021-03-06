The names of the columns:
---------------------------
**Activity** is the name of the activity at the time. 

**Subject** is the ID of the viewed subject. 

See [raw data description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for others.


```r
dimnames(TMData)[[2]]
```

```
##  [1] "Activity"                    "Subject"                    
##  [3] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
##  [5] "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
##  [7] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
##  [9] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
## [11] "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
## [13] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
## [15] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
## [17] "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
## [19] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
## [21] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
## [23] "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
## [25] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
## [27] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
## [29] "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
## [31] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
## [33] "tBodyAccMag-mean()"          "tBodyAccMag-std()"          
## [35] "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
## [37] "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
## [39] "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
## [41] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
## [43] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
## [45] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
## [47] "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
## [49] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
## [51] "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
## [53] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
## [55] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
## [57] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
## [59] "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
## [61] "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
## [63] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
## [65] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
## [67] "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()"
```

The scrypt variables:
---------------------
**trainY, trainX, testX, testY, trainSub, testSub** - temp files, used for store the train/test parts of the X_*.txt, y_*.txt and subject_*.txt datasets.

**xData** - the dataset contains merged `x_*.txt` files datasets.

**yData** - the set contains the type of the activity.

**sub** - the set contains the ID of the subject.

**featIndex** - the set contains the numbers of the mean and standard deviation features.

**activNames** - contains the names of the activitys.

**TData** - dataset for the 4 problem of the course work.

**meltData** - the melt dataset for the each subject and activity.

**TMData** - dataset for the 5 problem of the course work.
