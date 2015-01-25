# Read in files
test.subjects <- read.table("test/subject_test.txt")
test.data <- read.table("test/X_test.txt")
test.labels <- read.table("test/y_test.txt")

train.subjects <- read.table("train/subject_train.txt")
train.data <- read.table("train/X_train.txt")
train.labels <- read.table("train/y_train.txt")


# 1.) Bind files
# Format: Subjects | Labels | Data 
testData <- cbind(test.subjects,test.labels,test.data)
trainData <- cbind(train.subjects,train.labels,train.data)
data <- rbind(testData,trainData)

# Read in features file
features <- read.table("features.txt",stringsAsFactors=FALSE)

# Add headers to data frame
names(data) <-c("Subject","Label",features[,2])


# 2.) Extract Only Mean and Standard Deviation for each Measurement
data.mean.stdev <- data[,grepl("mean|std|Subject|Label",names(data))]


# 3.) Use descriptive activity names to name the activities in the data set

# Read in activities file
activities <- read.table("activity_labels.txt",stringsAsFactors=FALSE)

# Substitute activity ids with appropriate names
data.mean.stdev$Label <- activities[data.mean.stdev$Label, 2]


# 4.) Label the data set with descriptive variable names

# Remove every non-alphabetic character
names(data.mean.stdev) <- gsub("[^[:alpha:]]", "",names(data.mean.stdev))

# Make certain variables more descriptive
names(data.mean.stdev) <- gsub('mean', "Mean",names(data.mean.stdev))
names(data.mean.stdev) <- gsub('std', "StandardDeviation",names(data.mean.stdev))
names(data.mean.stdev) <- gsub('^t', "time",names(data.mean.stdev))
names(data.mean.stdev) <- gsub('^f', "frequency",names(data.mean.stdev))
names(data.mean.stdev) <- gsub('Freq', "Frequency",names(data.mean.stdev))
names(data.mean.stdev) <- gsub('Acc', "Acceleration",names(data.mean.stdev))
names(data.mean.stdev) <- gsub('Mag', "Magnitude",names(data.mean.stdev))
names(data.mean.stdev) <- gsub('BodyBody', "Body",names(data.mean.stdev))


# 5.) Create an independent tidy data set with the average 
# of each variable for each activity and each subject.

mean_by_act_sub <- aggregate(data.mean.stdev[,3:ncol(data.mean.stdev)], 
                             by=list(data.mean.stdev$Subject,data.mean.stdev$Label),mean)

write.table(mean_by_act_sub,"tidyData.txt",row.names=FALSE)

