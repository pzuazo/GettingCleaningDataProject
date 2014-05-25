# Code Book
## Getting and Cleaning Data, Course project,  May 2014
The tasks of the project have been split into different R files. All of them are called in run_analysis.R. Here follows some more detailed explanations: 

* readData.R

It assumes "UCI HAR Dataset" folder content has not been modify after extraction (regarding structure and numer of files)
It reads the data from the following files into different data.frames used in the following steps

test data set

                test/X_test.txt (main data)
                test/subject_test.txt (subjects)
                test/y_test.txt (activity codes)
                
train data set

                train/X_train.txt (main data)
                train/subject_train.txt (subjects)
                train/y_train.txt (activity codes)
                
additional general information

                activity_labels.txt (labels for activty codes)
                features.txt (labels for variables, i.e. columns)
                

* mergeData.R : 

It merges both train and test datasets into a data.frame called "dataset".
Column names are taken from features.txt as they are.
Subjects and activities are also attached as extra new columns called "Subject" and "Activity".

* activities.R :

Replace the activity codes in "dataset" with the activity names found in activity_labels.txt. Activity names are first modified to get rid of underscores.


* target.R:

It identifies the target variables to be extracted (according to requirement 2) and set more descriptive new names for them.
Here follows a list with the selected variables and the new names given to them.
        
                                target       target.newnames
                                
                         Original name              New name
                    tBodyAcc-mean()-X         tBodyAccMeanX
                    tBodyAcc-mean()-Y         tBodyAccMeanY
                    tBodyAcc-mean()-Z         tBodyAccMeanZ
                     tBodyAcc-std()-X        tBodyAccStdevX
                     tBodyAcc-std()-Y        tBodyAccStdevY
                     tBodyAcc-std()-Z        tBodyAccStdevZ
                 tGravityAcc-mean()-X      tGravityAccMeanX
                 tGravityAcc-mean()-Y      tGravityAccMeanY
                 tGravityAcc-mean()-Z      tGravityAccMeanZ
                 tGravityAcc-std()-X     tGravityAccStdevX
                 tGravityAcc-std()-Y     tGravityAccStdevY
                 tGravityAcc-std()-Z     tGravityAccStdevZ
                tBodyAccJerk-mean()-X     tBodyAccJerkMeanX
                tBodyAccJerk-mean()-Y     tBodyAccJerkMeanY
                 tBodyAccJerk-mean()-Z     tBodyAccJerkMeanZ
                tBodyAccJerk-std()-X    tBodyAccJerkStdevX
                tBodyAccJerk-std()-Y    tBodyAccJerkStdevY
                tBodyAccJerk-std()-Z    tBodyAccJerkStdevZ
                  tBodyGyro-mean()-X        tBodyGyroMeanX
                  tBodyGyro-mean()-Y        tBodyGyroMeanY
                  tBodyGyro-mean()-Z        tBodyGyroMeanZ
                   tBodyGyro-std()-X       tBodyGyroStdevX
                   tBodyGyro-std()-Y       tBodyGyroStdevY
                   tBodyGyro-std()-Z       tBodyGyroStdevZ
                tBodyGyroJerk-mean()-X    tBodyGyroJerkMeanX
                tBodyGyroJerk-mean()-Y    tBodyGyroJerkMeanY
                tBodyGyroJerk-mean()-Z    tBodyGyroJerkMeanZ
                tBodyGyroJerk-std()-X   tBodyGyroJerkStdevX
                tBodyGyroJerk-std()-Y   tBodyGyroJerkStdevY
                tBodyGyroJerk-std()-Z   tBodyGyroJerkStdevZ
                  tBodyAccMag-mean()       tBodyAccMagMean
                   tBodyAccMag-std()      tBodyAccMagStdev
               tGravityAccMag-mean()    tGravityAccMagMean
                tGravityAccMag-std()   tGravityAccMagStdev
              tBodyAccJerkMag-mean()   tBodyAccJerkMagMean
               tBodyAccJerkMag-std()  tBodyAccJerkMagStdev
                 tBodyGyroMag-mean()      tBodyGyroMagMean
                  tBodyGyroMag-std()     tBodyGyroMagStdev
             tBodyGyroJerkMag-mean()  tBodyGyroJerkMagMean
              tBodyGyroJerkMag-std() tBodyGyroJerkMagStdev
                   fBodyAcc-mean()-X         fBodyAccMeanX
                   fBodyAcc-mean()-Y         fBodyAccMeanY
                   fBodyAcc-mean()-Z         fBodyAccMeanZ
                    fBodyAcc-std()-X        fBodyAccStdevX
                    fBodyAcc-std()-Y        fBodyAccStdevY
                    fBodyAcc-std()-Z        fBodyAccStdevZ
               fBodyAccJerk-mean()-X     fBodyAccJerkMeanX
               fBodyAccJerk-mean()-Y     fBodyAccJerkMeanY
               fBodyAccJerk-mean()-Z     fBodyAccJerkMeanZ
                fBodyAccJerk-std()-X    fBodyAccJerkStdevX
                fBodyAccJerk-std()-Y    fBodyAccJerkStdevY
                fBodyAccJerk-std()-Z    fBodyAccJerkStdevZ
                  fBodyGyro-mean()-X        fBodyGyroMeanX
                  fBodyGyro-mean()-Y        fBodyGyroMeanY
                  fBodyGyro-mean()-Z        fBodyGyroMeanZ
                   fBodyGyro-std()-X       fBodyGyroStdevX
                   fBodyGyro-std()-Y       fBodyGyroStdevY
                   fBodyGyro-std()-Z       fBodyGyroStdevZ
                  fBodyAccMag-mean()       fBodyAccMagMean
                   fBodyAccMag-std()      fBodyAccMagStdev
                   fBodyBodyAccJerkMag-mean()   fBodyAccJerkMagMean
                   fBodyBodyAccJerkMag-std()  fBodyAccJerkMagStdev
                   fBodyBodyGyroMag-mean()      fBodyGyroMagMean
                   fBodyBodyGyroMag-std()     fBodyGyroMagStdev
                   fBodyBodyGyroJerkMag-mean()  fBodyGyroJerkMagMean
                   fBodyBodyGyroJerkMag-std() fBodyGyroJerkMagStdev

** Due to the length of the variable names, uppercase within new names strings have been kept to ease the reading.

** t/f stands for time/frecuency variables respectively



                   
* Rest of run_analysis.R script

First, it extracts only the measurements on the mean and standard deviation for each measurement (according to previous table) into "dataset.extraction" data.frame.

Then, it creates a second, independent tidy data set (" tidy data", written into tidydata.txt) with the average of each variable for each activity and each subject. Column names are kept, but here a given variable represent the average of that variable for each subject and each activity (e.g. "tBodyAccStdevX" represents the average of tBodyAccStdevX for each subject and each activity).

Scientific number format has been used for better outlook.

Package data.table is used to ease the subsetting for subject and activity from "dataset.extraction".

