
# Read in the training data and attach the subjects and
# activity IDs
training_data = read.table("UCI HAR Dataset/train/x_train.txt")
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
training_data$Subject <- subject_train$V1
y_train = read.table("UCI HAR Dataset/train/y_train.txt")
training_data$ActivityId <- y_train$V1

# Read in the testing data and attach the subjects and
# activity IDs
testing_data = read.table("UCI HAR Dataset/test/x_test.txt")
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
testing_data$Subject <- subject_test$V1
y_test = read.table("UCI HAR Dataset/test/y_test.txt")
testing_data$ActivityId <- y_test$V1 

# concatenate the testing and training data 
final_data <- rbind(training_data, testing_data)

# Set the column names to something readable
features = read.table("UCI HAR Dataset/features.txt")
colnames(final_data) <- append(as.character(features$V2), 
                               c('Subject', 'ActivityId'))


# Remove all columns except those of means and standard deviations
is_mean_or_std <- function(x){ 
    return ((length(grep("std()", x)) > 0) || 
            (length(grep("mean()", x)) > 0) || 
            (length(grep("meanFreq()", x)) > 0)); 
}
columns_to_keep <- Filter(is_mean_or_std, features$V2)
columns_to_keep <- as.character(columns_to_keep)
columns_to_keep <- append(columns_to_keep, c('Subject', 'ActivityId'))

final_data <- final_data[,columns_to_keep]

# Merge in the Activity labels with the ActivityIds
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt")
merged_final_data <- merge(final_data, activity_labels, by.x='ActivityId', by.y='V1')
# Rename the merged V2 column to Activity
names(merged_final_data)[names(merged_final_data) == 'V2'] <- 'Activity'

# Remove the ActivityId column
merged_final_data$ActivityId <- NULL

write.table(merged_final_data, "MeansAndStandardDeviations.txt", row.names=FALSE)

# Make the final_data into a data table so we can more easily
# do summarization on it
library(data.table)
final_table = data.table(merged_final_data)
# Order the data to make it pretty
final_table <- final_table[order(Activity, Subject)]

# Summarize the table by subject and activity
sum_table <- final_table[,lapply(.SD,mean),by=list(Activity, Subject)]

# Write the data out to the 
write.table(sum_table, "AverageMeansAndStandardDeviations.txt", row.names=FALSE)