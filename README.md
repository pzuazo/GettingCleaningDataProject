# README
## Getting and Cleaning Data, Course project,  May 2014
This is the course project of the "Getting and cleaning Data" course.
[https://class.coursera.org/getdata-003](https://class.coursera.org/getdata-003)

The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

We will use the following data set:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

We have to create one R script called run_analysis.R with the following requirements. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Before running the script, the zip file containing the data is supposed to be unzipped in the working directory in a folder called "UCI HAR Dataset".

The following subscripts are called in run_analysis.R to perform the whole task:

* readData.R : reads the data from the different files contained in the "UCI HAR Dataset".
* mergeData.R : Merges the training and the test sets into a data.frame called "dataset".
* activities.R : Uses activity names to name the activity codes in "dataset".
* target.R: identifies the target variables to be extracted (according to requirement 2) and set more descriptive new names for them.

I decided to split the task into different files just for learning purposes.
I consider that given the lack of complexity of the transformations I did it might be clearer in just one file.

Details on variables and data transformation can be found at CodeBook.md

