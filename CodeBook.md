#Code Book

##Experimental Design & Background:

The experiment consisted of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
while wearing a Samsung Galaxy S II on the waist. Using its embedded accelerometer and gyroscope, 
3-axial linear acceleration and 3-axial angular velocity were recorded at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, 
where 70% of the volunteers was selected for generating the training data and 30% the test data. 


## Raw Data Features:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using 
a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the 
acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass 
Butterworth filter with a corner frequency of 0.3 Hz. 


Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
tBodyGyroMag, tBodyGyroJerkMag). 


Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag



The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values.

iqr(): Interquartile range

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal
 
kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window

angle(): Angle between to vectors


##Data Transformations

1.) Merged associated training (X_train.txt, y_train.txt) and test (X_text.txt, y_test.txt) files along with 
subject ids (subject_test.txt, subject_train.txt) into one dataset.

2.) For each measurement, extracted only variables calculating mean and standard deviation by searching for the literals "mean" and "std".
 
3.) Included descriptive activity names by adding an activity id column to the dataset and then mapping 
each id to the appropriate label (activity_labels.txt).

4.) Formatted variable names to be more descriptive and include only alphabetic characters (removed parenthesis, dashes, commas).
 
5.) Calculated the average of each variable for each activity and each subject to be saved as a new tidy dataset.


##Tidy Dataset

Contains 180 observations with 81 variables which includes:

	* Subject ID: A unique identifier assigned to each subject (1-30)
	* Activity Label: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
	* Feature Vector: 
	
"timeBodyAccelerationMeanX"                                  
"timeBodyAccelerationMeanY"                                  
"timeBodyAccelerationMeanZ"                                  
"timeBodyAccelerationStandardDeviationX"                     
"timeBodyAccelerationStandardDeviationY"                     
"timeBodyAccelerationStandardDeviationZ"                     
"timeGravityAccelerationMeanX"                               
"timeGravityAccelerationMeanY"                               
"timeGravityAccelerationMeanZ"                               
"timeGravityAccelerationStandardDeviationX"                  
"timeGravityAccelerationStandardDeviationY"                  
"timeGravityAccelerationStandardDeviationZ"                  
"timeBodyAccelerationJerkMeanX"                              
"timeBodyAccelerationJerkMeanY"                              
"timeBodyAccelerationJerkMeanZ"                              
"timeBodyAccelerationJerkStandardDeviationX"                 
"timeBodyAccelerationJerkStandardDeviationY"                 
"timeBodyAccelerationJerkStandardDeviationZ"                 
"timeBodyGyroMeanX"                                          
"timeBodyGyroMeanY"                                          
"timeBodyGyroMeanZ"                                          
"timeBodyGyroStandardDeviationX"                             
"timeBodyGyroStandardDeviationY"                             
"timeBodyGyroStandardDeviationZ"                             
"timeBodyGyroJerkMeanX"                                      
"timeBodyGyroJerkMeanY"                                      
"timeBodyGyroJerkMeanZ"                                      
"timeBodyGyroJerkStandardDeviationX"                         
"timeBodyGyroJerkStandardDeviationY"                         
"timeBodyGyroJerkStandardDeviationZ"                         
"timeBodyAccelerationMagnitudeMean"                          
"timeBodyAccelerationMagnitudeStandardDeviation"             
"timeGravityAccelerationMagnitudeMean"                       
"timeGravityAccelerationMagnitudeStandardDeviation"          
"timeBodyAccelerationJerkMagnitudeMean"                      
"timeBodyAccelerationJerkMagnitudeStandardDeviation"         
"timeBodyGyroMagnitudeMean"                                  
"timeBodyGyroMagnitudeStandardDeviation"                     
"timeBodyGyroJerkMagnitudeMean"                              
"timeBodyGyroJerkMagnitudeStandardDeviation"                 
"frequencyBodyAccelerationMeanX"                             
"frequencyBodyAccelerationMeanY"                             
"frequencyBodyAccelerationMeanZ"                             
"frequencyBodyAccelerationStandardDeviationX"                
"frequencyBodyAccelerationStandardDeviationY"                
"frequencyBodyAccelerationStandardDeviationZ"                
"frequencyBodyAccelerationMeanFrequencyX"                    
"frequencyBodyAccelerationMeanFrequencyY"                    
"frequencyBodyAccelerationMeanFrequencyZ"                    
"frequencyBodyAccelerationJerkMeanX"                         
"frequencyBodyAccelerationJerkMeanY"                         
"frequencyBodyAccelerationJerkMeanZ"                         
"frequencyBodyAccelerationJerkStandardDeviationX"            
"frequencyBodyAccelerationJerkStandardDeviationY"            
"frequencyBodyAccelerationJerkStandardDeviationZ"            
"frequencyBodyAccelerationJerkMeanFrequencyX"                
"frequencyBodyAccelerationJerkMeanFrequencyY"                
"frequencyBodyAccelerationJerkMeanFrequencyZ"                
"frequencyBodyGyroMeanX"                                     
"frequencyBodyGyroMeanY"                                     
"frequencyBodyGyroMeanZ"                                     
"frequencyBodyGyroStandardDeviationX"                        
"frequencyBodyGyroStandardDeviationY"                        
"frequencyBodyGyroStandardDeviationZ"                        
"frequencyBodyGyroMeanFrequencyX"                            
"frequencyBodyGyroMeanFrequencyY"                            
"frequencyBodyGyroMeanFrequencyZ"                            
"frequencyBodyAccelerationMagnitudeMean"                     
"frequencyBodyAccelerationMagnitudeStandardDeviation"        
"frequencyBodyAccelerationMagnitudeMeanFrequency"            
"frequencyBodyAccelerationJerkMagnitudeMean"             
"frequencyBodyAccelerationJerkMagnitudeStandardDeviation"
"frequencyBodyAccelerationJerkMagnitudeMeanFrequency"    
"frequencyBodyGyroMagnitudeMean"                         
"frequencyBodyGyroMagnitudeStandardDeviation"            
"frequencyBodyGyroMagnitudeMeanFrequency"                
"frequencyBodyGyroJerkMagnitudeMean"                     
"frequencyBodyGyroJerkMagnitudeStandardDeviation"        
"frequencyBodyGyroJerkMagnitudeMeanFrequency"     

Values represent averages grouped by activity and subject 


#####References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a 
Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

