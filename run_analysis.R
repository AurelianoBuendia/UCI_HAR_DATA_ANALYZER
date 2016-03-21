# PLEASE SET WORKING PATH HERE! FOLDERS /TRAIN AND /TEST SHOULD BE DIRECTLY INSIDE THE WORKING PATH.
#setwd('~/repos/UCI_HAR_Dataset')
setwd('C:/source/UCI_HAR_Dataset/data')
library(data.table)

# Read features names
features.names <- read.table('features.txt', quote = "\"")

# Read train data
train.data.file <- file.path('train', 'X_train.txt')
train.data <- read.table(train.data.file, quote = "\"")
train.label.file <- file.path('train', 'Y_train.txt')
train.label <- read.table(train.label.file, quote = "\"")
train.subject.file <- file.path('train', 'subject_train.txt')
train.subject <- read.table(train.subject.file, quote = "\"")

# Setting names to train columns
names(train.data) <- features.names$V2
names(train.subject) <- 'Subject'
names(train.label) <- 'Activity_label'

# Create final train data frame
#train.df <- data.frame(c(train.subject, train.data, train.label))
train.df <- cbind(train.data, train.subject, train.label)

# Read test data
test.data.file <- file.path('test', 'X_test.txt')
test.data <- read.table(test.data.file, quote = "\"")
test.label.file <- file.path('test', 'Y_test.txt')
test.label <- read.table(test.label.file, quote = "\"")
test.subject.file <- file.path('test', 'subject_test.txt')
test.subject <- read.table(test.subject.file, quote = "\"")

# Setting names to test columns
names(test.data) <- features.names$V2
names(test.subject) <- 'Subject'
names(test.label) <- 'Activity_label'

# Create final test data frame
test.df <- cbind(test.data, test.subject, test.label)

# Merge train and test data frames
df <- rbind(train.df, test.df)

# Get column names
col.names <- colnames(df)
# Shows only column names that contain "mean" or "std"
col.names[grep("(mean|std)", col.names)]
# Filter merged data frame to extract only columns that contain means or standard variations (std), plus "Subject" and "Activity_label"
df.filter <- df[,grep("(mean|std|Subject|Activity_label)", col.names)] # Filtered a total of 81 columns

# This function receives an Activity_label value (an integer from 1 to 6) and returns the correspondent friendly label (see activity_labels.txt)
getLabelName <- function(label.value) {
  # Receives: label.value = Activity_label from 1 to 6
  # Returns: 1 WALKING
  #          2 WALKING_UPSTAIRS
  #          3 WALKING_DOWNSTAIRS
  #          4 SITTING
  #          5 STANDING
  #          6 LAYING
  switch(label.value,
         result = "WALKING",
         result = "WALKING_UPSTAIRS",
         result = "WALKING_DOWNSTAIRS",
         result = "SITTING",
         result = "STANDING",
         result = "LAYING"
  )
}

# Clean column names
colnames <- names(df.filter)
colnames <- gsub("()", "", colnames, fixed=TRUE)
colnames <- gsub("-", "", colnames, fixed=TRUE)
names(df.filter) <- colnames

# Group means by Subject and Activity
df.grouped <- aggregate(. ~ Subject+Activity_label, data=df.filter, mean, na.rm=TRUE)

# Add label names column to data frame
Activity_name <- sapply(df.grouped$Activity_label, getLabelName)
df.grouped <- cbind(df.grouped, Activity_name)

dt.grouped <- data.table(df.grouped)
setkey(dt.grouped, Subject)

# Save result data table
write.table(dt.grouped, file = "result_data.txt", row.names=FALSE)








