# Getting-Cleaning-Data-Course-Project
Course Project for getting and cleaning data coursera course
The primary script for this project is run_analysis.R, this script does the following:

Sets the proper working directory
Reads in the subject, test and train data for both the x and y datasets
Merges the subject data, the x data and the 
Adds subject and activity lables
Combines all data
Narrows down data to only include the desired columns mean and standard deviation
Factors activity labels
Addes the describity labels
Finally creates the tidy.txt file which is the end result tidy data set.

The data used in this project is derived from:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
