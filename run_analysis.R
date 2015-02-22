# Getting and Cleaning Data Course Project
# Note. The compressed file is assumed to be present in the working directory
# 1) Decompress data and Read the training and test sets 
library(dplyr)
fileName <- "./getdata_projectfiles_UCI HAR Dataset.zip"
unzip(fileName)
if (file.exists("data")) unlink("data", recursive=TRUE)
file.rename("UCI HAR Dataset","data")
features        <- read.table("data/features.txt")
activity_labels <- read.table("data/activity_labels.txt")
x_train         <- read.table("data/train/X_train.txt")
y_train         <- read.table("data/train/y_train.txt")
subject_train   <- read.table("data/train/subject_train.txt")
x_test          <- read.table("data/test/X_test.txt")
y_test          <- read.table("data/test/y_test.txt")
subject_test    <- read.table("data/test/subject_test.txt")

# 2) Merge both datasets and rename features columns (lowercase,
#    and without special characters
df.s    <- rbind(subject_train, subject_test)
df.y    <- rbind(y_train, y_test)
df.x    <- rbind(x_train, x_test)
names(df.x) <- gsub("-|\\(|\\)","",tolower(features$V2))

# 3) Extract measures of mean and sd, add Subject and Activity columns
# - Select columns with mean and sd (I have decided to included MeanFreq variables)
meanSd       <- grep("mean|std\\(\\)", features$V2)
df.xMeanSd   <- df.x[,meanSd]
# - Add Subject and Activity Columns
df           <- cbind("subject"=df.s$V1, "V1"=df.y$V1, df.xMeanSd)
# - Change activity Id by Activity Name with proper column name
df           <- merge(activity_labels, df, by="V1")
df$V1        <- NULL
names(df)[1] <- "activity"

# 4) Computing the average of each variable for each activity and each subject
df.means     <- group_by(df, subject, activity)
df.means     <- summarise_each(df.means, funs(mean))

# 5) Writing the tidy data set in the working directoy
# You can read with: df.tidy <- read.table("tidydata.txt",sep=",",header=TRUE)
write.table(df.means, file ="tidydata.txt", sep=",", row.name=FALSE)
