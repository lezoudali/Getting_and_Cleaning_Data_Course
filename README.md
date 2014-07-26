
Getting and Cleaning Data Project
=================================

This repo contains a script, run_analysis.R. This script merges data collected from the Human Activity Recognition Using Smartphones project at the UCI Machine Learning Repository. 

Steps to run the script
-----------------------

*Download the run_analysis.R script in your working directory. 

*The script will download and unzip the data set folder, if you do not already have it in your working directory. If you do have the data set folder, make sure the folder's name is 'UCI HAR Dataset'.

*Use the command 'source("run_analysis.R")' followed by 'run_analysis()' in Rstudio. 

*run_analysis() will generate two output files in your working directory. 
	-merge_data.txt, contains a 10299x68 data set from merging the training and test sets

	-tidy_data.txt, contains a 180x68 data set with the average of each variable for each activity and each subject

*You can use the read.table() function to read both data sets in R.

© Lezou Dali 2014 All Rights reserved.