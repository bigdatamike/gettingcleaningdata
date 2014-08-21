This project is part of an assignment for the Coursera course Getting and Cleaning Data.
This project demonstrates my ability to collect, work with, and clean a data set. 

This project utilizes data concerning Human Activity Recognition(har) while using smartphone data. 
The data used was collected from the accelerometers from the Samsung Galaxy S smartphone.
The subjects were a group of 30 volunteers within an age bracket of 19-48 years. Each subject performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on their waist. 
Using the smartphone's embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity 
data at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers 
were selected for generating the training data and 30% the test data. 
For this project only the mean and standard deviation of the measurements were used (see codebook).

The data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The data was downloaded form this site and saved into the R working directory of my computer.
The data was explored (dim, str, etc.) and checked for missing data.
The data(observations, activity, and subject) were then combined, and the appropriate columns relating to mean and standard deviation were extracted from the data. 
The data was then saved as a tidy data (aggdata in run_analsys.R) set containing the subject, activity, and observation(average means and standard deviations).
The details of the analysis and manipulation of the data is outlined in the run_analysis.R script.

The following files( to include this readme) are part of this deliverable for this assignment.

1.  run_analysis.R script - This script contains the code used, as well as the steps involved to create

a tidy data set with contains the average of each variable for each activity and each subject.

2.  A tidy data output file (containing the average means and standard deviations) saved as a text file called hardata.txt, and uploaded to a different location. 

3.  A codebook describing the data used for this project, harcodebook.md 

4.  This Readme.md file.  
	
	
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.