 Human Activity Recognition(har) while using smartphone data


This project is part of an assignment for the Coursera course Getting and Cleaning Data.
this project demonstrate my ability to collect, work with, and clean a data set. 

This project utilizes data concerning Human Activity Recognition(har) while using smartphone data. 
The data used was collected from the accelerometers from the Samsung Galaxy S smartphone.
The subjects were a group of 30 volunteers(subjects) within an age bracket of 19-48 years. Each subject performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on their waist. 
Using the smartphone's embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity 
data at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the subjects 
were selected for generating the training data and 30% the test data. 

Observation Names
- Means and standard deviations of Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Means and standard deviations Triaxial Angular velocity from the gyroscope. 

"tBodyAccmeanX"               
"tBodyAccmeanY"                "tBodyAccmeanZ"                "tGravityAccmeanX"            
"tGravityAccmeanY"             "tGravityAccmeanZ"             "tBodyAccJerkmeanX"           
"tBodyAccJerkmeanY"            "tBodyAccJerkmeanZ"            "tBodyGyromeanX"              
"tBodyGyromeanY"               "tBodyGyromeanZ"               "tBodyGyroJerkmeanX"          
"tBodyGyroJerkmeanY"           "tBodyGyroJerkmeanZ"           "tBodyAccMagmean"             
"tGravityAccMagmean"           "tBodyAccJerkMagmean"          "tBodyGyroMagmean"            
"tBodyGyroJerkMagmean"         "fBodyAccmeanX"                "fBodyAccmeanY"               
"fBodyAccmeanZ"                "fBodyAccmeanFreqX"            "fBodyAccmeanFreqY"           
"fBodyAccmeanFreqZ"            "fBodyAccJerkmeanX"            "fBodyAccJerkmeanY"           
"fBodyAccJerkmeanZ"            "fBodyAccJerkmeanFreqX"        "fBodyAccJerkmeanFreqY"       
"fBodyAccJerkmeanFreqZ"        "fBodyGyromeanX"               "fBodyGyromeanY"              
"fBodyGyromeanZ"               "fBodyGyromeanFreqX"           "fBodyGyromeanFreqY"          
"fBodyGyromeanFreqZ"           "fBodyAccMagmean"              "fBodyAccMagmeanFreq"         
"fBodyBodyAccJerkMagmean"      "fBodyBodyAccJerkMagmeanFreq"  "fBodyBodyGyroMagmean"        
"fBodyBodyGyroMagmeanFreq"     "fBodyBodyGyroJerkMagmean"     "fBodyBodyGyroJerkMagmeanFreq"
"tBodyAccstdX"                 "tBodyAccstdY"                 "tBodyAccstdZ"                
"tGravityAccstdX"              "tGravityAccstdY"              "tGravityAccstdZ"             
"tBodyAccJerkstdX"             "tBodyAccJerkstdY"             "tBodyAccJerkstdZ"            
"tBodyGyrostdX"                "tBodyGyrostdY"                "tBodyGyrostdZ"               
"tBodyGyroJerkstdX"            "tBodyGyroJerkstdY"            "tBodyGyroJerkstdZ"           
"tBodyAccMagstd"               "tGravityAccMagstd"            "tBodyAccJerkMagstd"          
"tBodyGyroMagstd"              "tBodyGyroJerkMagstd"          "fBodyAccstdX"                
"fBodyAccstdY"                 "fBodyAccstdZ"                 "fBodyAccJerkstdX"            
"fBodyAccJerkstdY"             "fBodyAccJerkstdZ"             "fBodyGyrostdX"               
"fBodyGyrostdY"                "fBodyGyrostdZ"                "fBodyAccMagstd"              
"fBodyBodyAccJerkMagstd"       "fBodyBodyGyroMagstd"          "fBodyBodyGyroJerkMagstd"    


The activity labels used in the project are listed below, and are listed under the column titled activities.
1   WALKING
2	WALKING_UPSTAIRS
3	WALKING_DOWNSTAIRS
4	SITTING
5	STANDING
6	LAYING

An identifier of the subject who carried out the experiment.
Subjects were identified in the study by a number ranging from 1 -30, and identified with the column header subjects.

The output of this project was a tidy data output file(containing the average means and standard deviations) saved as a text file called hardata.txt. 