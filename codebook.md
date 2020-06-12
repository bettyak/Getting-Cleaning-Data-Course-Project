Modifications

1.All Data was merged.  First the train and test data was merger for x, y, and subject data sets.  
Then the x, y and subject data was merged together to form one data set containing all data
2.The subject and activity names were added to the data
3.The data was then limited to only standard deviation and mean values.
4. Activity labels were added to the data set
5. Desciprtive labels were added for the varaibles to include full names.
6. A tidy data set was created.

Variables

"subject" is a unique identifier for the indiviudal undergoing observation.  
These individuals were 30 volunteers within an age bracket of 19-48 years. (see reference material below)

"activity" this is the activity the individual performed during obeservation.  
The activities included: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The remainting variables within the data set are the measurements for when one individual performed the activities.  
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

These measurements are labeled:
 "timeBodyAccelerometer-mean()-X"                 
 "timeBodyAccelerometer-mean()-Y"                
 "timeBodyAccelerometer-mean()-Z"                
 "timeBodyAccelerometer-std()-X"                 
 "timeBodyAccelerometer-std()-Y"                  
 "timeBodyAccelerometer-std()-Z"                 
 "timeGravityAccelerometer-mean()-X"              
 "timeGravityAccelerometer-mean()-Y"             
 "timeGravityAccelerometer-mean()-Z"              
 "timeGravityAccelerometer-std()-X"              
 "timeGravityAccelerometer-std()-Y"               
 "timeGravityAccelerometer-std()-Z"              
 "timeBodyAccelerometerJerk-mean()-X"             
 "timeBodyAccelerometerJerk-mean()-Y"            
 "timeBodyAccelerometerJerk-mean()-Z"             
 "timeBodyAccelerometerJerk-std()-X"             
 "timeBodyAccelerometerJerk-std()-Y"              
 "timeBodyAccelerometerJerk-std()-Z"             
 "timeBodyGyroscope-mean()-X"                     
 "timeBodyGyroscope-mean()-Y"                    
 "timeBodyGyroscope-mean()-Z"                     
 "timeBodyGyroscope-std()-X"                     
 "timeBodyGyroscope-std()-Y"                      
 "timeBodyGyroscope-std()-Z"                     
 "timeBodyGyroscopeJerk-mean()-X"                 
 "timeBodyGyroscopeJerk-mean()-Y"                
 "timeBodyGyroscopeJerk-mean()-Z"                 
 "timeBodyGyroscopeJerk-std()-X"                 
 "timeBodyGyroscopeJerk-std()-Y"                  
 "timeBodyGyroscopeJerk-std()-Z"                 
 "timeBodyAccelerometerMagnitude-mean()"          
 "timeBodyAccelerometerMagnitude-std()"          
 "timeGravityAccelerometerMagnitude-mean()"       
 "timeGravityAccelerometerMagnitude-std()"       
 "timeBodyAccelerometerJerkMagnitude-mean()"      
 "timeBodyAccelerometerJerkMagnitude-std()"      
 "timeBodyGyroscopeMagnitude-mean()"              
 "timeBodyGyroscopeMagnitude-std()"              
 "timeBodyGyroscopeJerkMagnitude-mean()"          
 "timeBodyGyroscopeJerkMagnitude-std()"          
 "frequencyBodyAccelerometer-mean()-X"            
 "frequencyBodyAccelerometer-mean()-Y"           
 "frequencyBodyAccelerometer-mean()-Z"            
 "frequencyBodyAccelerometer-std()-X"            
 "frequencyBodyAccelerometer-std()-Y"             
 "frequencyBodyAccelerometer-std()-Z"            
 "frequencyBodyAccelerometerJerk-mean()-X"        
 "frequencyBodyAccelerometerJerk-mean()-Y"       
 "frequencyBodyAccelerometerJerk-mean()-Z"        
 "frequencyBodyAccelerometerJerk-std()-X"        
 "frequencyBodyAccelerometerJerk-std()-Y"         
 "frequencyBodyAccelerometerJerk-std()-Z"        
 "frequencyBodyGyroscope-mean()-X"                
 "frequencyBodyGyroscope-mean()-Y"               
 "frequencyBodyGyroscope-mean()-Z"                
 "frequencyBodyGyroscope-std()-X"                
 "frequencyBodyGyroscope-std()-Y"                 
 "frequencyBodyGyroscope-std()-Z"                
 "frequencyBodyAccelerometerMagnitude-mean()"     
 "frequencyBodyAccelerometerMagnitude-std()"     
 "frequencyBodyAccelerometerJerkMagnitude-mean()" 
 "frequencyBodyAccelerometerJerkMagnitude-std()" 
 "frequencyBodyGyroscopeMagnitude-mean()"         
 "frequencyBodyGyroscopeMagnitude-std()"         
 "frequencyBodyGyroscopeJerkMagnitude-mean()"     
 "frequencyBodyGyroscopeJerkMagnitude-std()" 


The data used in this project is derived from:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
