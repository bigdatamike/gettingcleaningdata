##downloaded files from coursera site, and placed into R working directory.
##read in files from directory verifying dimensions, class, and determining if any missing data is present.
##Though not required by this assignment, normally I would distinguish between test and train data once all data was joined.
##Read features list
features <- read.table("./UCI HAR Dataset/features.txt", sep ="", header=FALSE, check.names=FALSE, quote="")
## Read in activity labels list
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", sep ="", header=FALSE, check.names=FALSE, quote="")

##Read in test files
xtest <- read.table("UCI HAR Dataset/test/X_test.txt", sep ="", header=FALSE, check.names=FALSE, quote="")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt", sep ="", header=FALSE, check.names=FALSE, quote="")
subtest <- read.table("UCI HAR Dataset/test/subject_test.txt", sep ="", header=FALSE, check.names=FALSE, quote="")
##bind together all obserbations(xtest), activity labels(ytest), and subjects(subtest)
test <- cbind(xtest, ytest, subtest)

##Read in train files
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt", sep ="", header=FALSE, check.names=FALSE, quote="")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt", sep ="", header=FALSE, check.names=FALSE, quote="")
subtrain <- read.table("UCI HAR Dataset/train/subject_train.txt", sep ="", header=FALSE, check.names=FALSE, quote="")
##bind together all obserbations(xtrain), activity labels(ytrain), and subjects(subtrain)
train <- cbind(xtrain, ytrain, subtrain)

## join the train and test datasets
hardata <- rbind(train, test)

##clean features list of characters "- ()"
features <- gsub( '[-()]', "", features[,2])
##assigned features to columun name of the HAR Dataset(hardata)
colnames(hardata) <- features
##features <- data.frame(features)

##add activity labels to hardata(HAR Dataset)
hardata[,562] <- gsub( '1', "Walking", hardata[,562])
hardata[,562] <- gsub( '2', "WALKING_UPSTAIRS", hardata[,562])
hardata[,562] <- gsub( '3', "WALKING_DOWNSTAIRS", hardata[,562])
hardata[,562] <- gsub( '4', " SITTING", hardata[,562])
hardata[,562] <- gsub( '5', "STANDING", hardata[,562])
hardata[,562] <- gsub( '6', "LAYING", hardata[,562])

##select mean and std columns from HAR dataset(hardata)
features <- data.frame(features)
meannames <- grep("mean", features[,1])## column numbers that contain the word mean
sdtnames <- grep("std", features[,1])## column numbers that contain the word std
harmean <- hardata[,meannames]## selecting columns with mean in column header
harstd <- hardata[,sdtnames]## selecting columns with std in column header
har<- cbind(harmean, harstd, hardata[562], hardata[563])##bind together meand & std, along with activity and subject data
##add column names for activity and subject to the HAR Dataset
names(har)[80] <- "activity" ## add column name to the HAR Dataset(har)
names(har)[81] <- "subject" ## add column name to the HAR Dataset(har)

## create tidy dataset with mean for each activity
aggdata <-aggregate(har, by=list(activity = har$activity, subject = har$subject),FUN=mean, na.rm=TRUE)
aggdata[82] <- NULL ## remove column
aggdata[83] <- NULL ## remove column

##write file
write.table(aggdata,file="~/hardata.txt", sep="\t", row.name =FALSE, format(ttf.all, digits=6))






