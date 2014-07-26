run_analysis <- function() {
	
	#download and unzip file if it's not already in the directory
	if(!file.exists('UCI HAR Dataset')){
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url, destfile = 'data.zip', method='curl')
    unzip('data.zip')
    }
    #setwd("./UCI HAR Dataset")
	
	#reading data from directory 
	activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
	
	x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = F)
	y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = F)
	
	test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = F)
	test_data <- cbind(test_subject, y_test, x_test)
	
	x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = F)
	y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = F)
	
	train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = F)
	train_data <- cbind(train_subject, y_train, x_train)
	
	#merges the training and the test sets to create one data set.
	data <- rbind(train_data, test_data)
	names <- as.character(read.table("./UCI HAR Dataset/features.txt", header = F)[,2])
	names <- c("Subject", "Activity", names)
	names(data) <- names
	

	#uses descriptive activity names to name the activites in data set 
	x = 1
	for(label in activity_labels){
		data$Activity <- gsub(x, label, data$Activity)
		x <- x+1
	}
	
	#appropriately labels the data set with descriptive variable names
	subset_vector <- c(1:2, grep("mean\\(\\)|std\\(\\)", names))
	merged_data <- data[, subset_vector]
	names(merged_data)<-gsub("-mean\\(\\)", ".Mean", names(merged_data))
	names(merged_data)<-gsub("-std\\(\\)", ".StdDev", names(merged_data))
	names(merged_data)<-gsub("BodyBody", "Body", names(merged_data))
	names(merged_data)<-gsub("-", "", names(merged_data))
    names(merged_data) <- gsub('^t', 'time.', names(merged_data))
    names(merged_data) <- gsub('^f', 'freq.', names(merged_data))
    names(merged_data) <- gsub('X', '.X', names(merged_data))
    names(merged_data) <- gsub('Y', '.Y', names(merged_data))
    names(merged_data) <- gsub('Z', '.Z', names(merged_data))
    names(merged_data) <- gsub('Acc', 'Acceleration', names(merged_data))
    names(merged_data) <- gsub('Mag', 'Magnitude', names(merged_data))
	
	#save first merged data to directory 
	write.table(merged_data, "merged_data.txt", sep="\t")
	
	#creates a second, independent tidy data set with the average of each variable for each activity
	#and each subject
	tidy_data <- aggregate(merged_data, by= list(Activity = merged_data$Activity, Subject=merged_data$Subject), mean)
	tidy_data[,4] <- NULL
	tidy_data[,3] <- NULL
	
	#save second tidy data set to directory 
	write.table(tidy_data, "tidy_data.txt", sep="\t")
	View(tidy_data)
	
}

