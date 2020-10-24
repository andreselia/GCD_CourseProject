# load packages
library(dplyr)

# Create a directory for the raw data
dir.create(path = "./Raw_data")

# Download the .zip file and extract the datasets

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!(file.exists("./Raw_data/datasets.zip"))) { 
        download.file(url = url, destfile = "./Raw_data/datasets.zip", method = "curl")
        unzip( zipfile = "./Raw_data/datasets.zip", exdir = "./Raw_data")
        }

# Read the activity_labels and features info
activity <- read.table(file = "./Raw_data/UCI HAR Dataset/activity_labels.txt", header = FALSE) %>%
                `colnames<-`(c("index_activity", "activity"))
features <- read.table(file = "./Raw_data/UCI HAR Dataset/features.txt", header = FALSE) %>%
        `colnames<-`(c("index_features", "features"))

# Read training test set and label the variable names
training_labels <- read.table(file = "./Raw_data/UCI HAR Dataset/train/y_train.txt", header = FALSE) %>%
        `colnames<-`(c("index_activity"))
training_subject <- read.table(file = "./Raw_data/UCI HAR Dataset/train/subject_train.txt", header = FALSE) %>%
        `colnames<-`(c("subject_id"))
trainig_set <- read.table(file = "./Raw_data/UCI HAR Dataset/train/X_train.txt", header = FALSE) %>%
        `colnames<-`(features$features)
trainig_set <- cbind(training_subject, training_labels, trainig_set)

# Read test test set and label the variable names
test_labels <- read.table(file = "./Raw_data/UCI HAR Dataset/test/y_test.txt", header = FALSE) %>%
        `colnames<-`(c("index_activity"))
test_subject <- read.table(file = "./Raw_data/UCI HAR Dataset/test/subject_test.txt", header = FALSE) %>%
        `colnames<-`(c("subject_id"))
test_set <- read.table(file = "./Raw_data/UCI HAR Dataset/test/X_test.txt", header = FALSE) %>%
        `colnames<-`(features$features)
test_set <- cbind(test_subject, test_labels,test_set)

# Merge train and test sets and change the index_activity for the activity names
merged_data <- rbind(trainig_set, test_set)
merged_data["index_activity"] <- activity[merged_data$index_activity, 2]
colnames(merged_data)[2] <- "activity"

# Extract mean and sf measurements, and take the average
data_avg <- merged_data %>% 
                select(subject_id,activity, contains("mean()"), contains("std()")) %>% 
                        group_by(subject_id,activity) %>%
                                summarise_all(.funs = (mean))

# Change variable names of data_avg
{names_data_avg <- names(data_avg)
names_data_avg <- gsub("^t", "Time-", names_data_avg)
names_data_avg <- gsub("Acc", "Accelerometer", names_data_avg) 
names_data_avg <- gsub("Gyro", "Gyroscope", names_data_avg) 
names_data_avg <- gsub("^f", "FastFourierTransform-", names_data_avg) 
names_data_avg <- gsub("mean()", "Mean", names_data_avg) 
names_data_avg <- gsub("std()", "Std", names_data_avg)
names_data_avg <- gsub("Mag", "Magnitude", names_data_avg)
}
names(data_avg) <- names_data_avg

# export data_avg
write.table(data_avg, file = "dataset_avg.txt", sep = "\t", row.names = FALSE)
