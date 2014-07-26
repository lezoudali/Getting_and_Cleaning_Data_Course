Getting and Cleaning Data Project 
=================================

###A full description of the data collected for this analysis can be obtained at:

	-http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###A copy of the raw data can be found at:

	-https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Data set information:

	-The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

	-Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

	-Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

###I extracted all the columns with either mean() or std() in their column names. 

###List of Variables from the tidy data set:

	- X, Y or Z represent the 3-axial
	- Mean and StdDev represent the measurements on the mean and standard deviation for each measurement.

	 [1] "Activity"                                  "Subject"                                  
	 [3] "time.BodyAcceleration.Mean.X"              "time.BodyAcceleration.Mean.Y"             
	 [5] "time.BodyAcceleration.Mean.Z"              "time.BodyAcceleration.StdDev.X"           
	 [7] "time.BodyAcceleration.StdDev.Y"            "time.BodyAcceleration.StdDev.Z"           
	 [9] "time.GravityAcceleration.Mean.X"           "time.GravityAcceleration.Mean.Y"          
	[11] "time.GravityAcceleration.Mean.Z"           "time.GravityAcceleration.StdDev.X"        
	[13] "time.GravityAcceleration.StdDev.Y"         "time.GravityAcceleration.StdDev.Z"        
	[15] "time.BodyAccelerationJerk.Mean.X"          "time.BodyAccelerationJerk.Mean.Y"         
	[17] "time.BodyAccelerationJerk.Mean.Z"          "time.BodyAccelerationJerk.StdDev.X"       
	[19] "time.BodyAccelerationJerk.StdDev.Y"        "time.BodyAccelerationJerk.StdDev.Z"       
	[21] "time.BodyGyro.Mean.X"                      "time.BodyGyro.Mean.Y"                     
	[23] "time.BodyGyro.Mean.Z"                      "time.BodyGyro.StdDev.X"                   
	[25] "time.BodyGyro.StdDev.Y"                    "time.BodyGyro.StdDev.Z"                   
	[27] "time.BodyGyroJerk.Mean.X"                  "time.BodyGyroJerk.Mean.Y"                 
	[29] "time.BodyGyroJerk.Mean.Z"                  "time.BodyGyroJerk.StdDev.X"               
	[31] "time.BodyGyroJerk.StdDev.Y"                "time.BodyGyroJerk.StdDev.Z"               
	[33] "time.BodyAccelerationMagnitude.Mean"       "time.BodyAccelerationMagnitude.StdDev"    
	[35] "time.GravityAccelerationMagnitude.Mean"    "time.GravityAccelerationMagnitude.StdDev" 
	[37] "time.BodyAccelerationJerkMagnitude.Mean"   "time.BodyAccelerationJerkMagnitude.StdDev"
	[39] "time.BodyGyroMagnitude.Mean"               "time.BodyGyroMagnitude.StdDev"            
	[41] "time.BodyGyroJerkMagnitude.Mean"           "time.BodyGyroJerkMagnitude.StdDev"        
	[43] "freq.BodyAcceleration.Mean.X"              "freq.BodyAcceleration.Mean.Y"             
	[45] "freq.BodyAcceleration.Mean.Z"              "freq.BodyAcceleration.StdDev.X"           
	[47] "freq.BodyAcceleration.StdDev.Y"            "freq.BodyAcceleration.StdDev.Z"           
	[49] "freq.BodyAccelerationJerk.Mean.X"          "freq.BodyAccelerationJerk.Mean.Y"         
	[51] "freq.BodyAccelerationJerk.Mean.Z"          "freq.BodyAccelerationJerk.StdDev.X"       
	[53] "freq.BodyAccelerationJerk.StdDev.Y"        "freq.BodyAccelerationJerk.StdDev.Z"       
	[55] "freq.BodyGyro.Mean.X"                      "freq.BodyGyro.Mean.Y"                     
	[57] "freq.BodyGyro.Mean.Z"                      "freq.BodyGyro.StdDev.X"                   
	[59] "freq.BodyGyro.StdDev.Y"                    "freq.BodyGyro.StdDev.Z"                   
	[61] "freq.BodyAccelerationMagnitude.Mean"       "freq.BodyAccelerationMagnitude.StdDev"    
	[63] "freq.BodyAccelerationJerkMagnitude.Mean"   "freq.BodyAccelerationJerkMagnitude.StdDev"
	[65] "freq.BodyGyroMagnitude.Mean"               "freq.BodyGyroMagnitude.StdDev"            
	[67] "freq.BodyGyroJerkMagnitude.Mean"           "freq.BodyGyroJerkMagnitude.StdDev"

© Lezou Dali 2014 All Rights reserved.
