<h2>Data Source</h2>

Data used for this assignment is collected from the accelerometers from the Samsung Galaxy S smartphone and is available at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was then randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

<h2>Feature selection</h2>

The features selected in the source data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

For more details, please refer README.txt provided in the data source of this assignment.


For this assignment, estimated mean and standard deviations of above time and frequency signals and mean frequency of frequency signals data from train and test data sets have been used to create tidy data.

<h2>List of the variables in tidy data</h2>
These are derived from features.txt provided in source data for this assignment. For instance tBodyAcc-mean()-X has been renamed to tbodyaccmeanx

<li>tBodyAccmeanX</li>
<li>tBodyAccmeanY</li>
<li>tBodyAccmeanZ</li>
<li>tBodyAccstdX</li>
<li>tBodyAccstdY</li>
<li>tBodyAccstdZ</li>
<li>tGravityAccmeanX</li>
<li>tGravityAccmeanY</li>
<li>tGravityAccmeanZ</li>
<li>tGravityAccstdX</li>
<li>tGravityAccstdY</li>
<li>tGravityAccstdZ</li>
<li>tBodyAccJerkmeanX</li>
<li>tBodyAccJerkmeanY</li>
<li>tBodyAccJerkmeanZ</li>
<li>tBodyAccJerkstdX</li>
<li>tBodyAccJerkstdY</li>
<li>tBodyAccJerkstdZ</li>
<li>tBodyGyromeanX</li>
<li>tBodyGyromeanY</li>
<li>tBodyGyromeanZ</li>
<li>tBodyGyrostdX</li>
<li>tBodyGyrostdY</li>
<li>tBodyGyrostdZ</li>
<li>tBodyGyroJerkmeanX</li>
<li>tBodyGyroJerkmeanY</li>
<li>tBodyGyroJerkmeanZ</li>
<li>tBodyGyroJerkstdX</li>
<li>tBodyGyroJerkstdY</li>
<li>tBodyGyroJerkstdZ</li>
<li>tBodyAccMagmean</li>
<li>tBodyAccMagstd</li>
<li>tGravityAccMagmean</li>
<li>tGravityAccMagstd</li>
<li>tBodyAccJerkMagmean</li>
<li>tBodyAccJerkMagstd</li>
<li>tBodyGyroMagmean</li>
<li>tBodyGyroMagstd</li>
<li>tBodyGyroJerkMagmean</li>
<li>tBodyGyroJerkMagstd</li>
<li>fBodyAccmeanX</li>
<li>fBodyAccmeanY</li>
<li>fBodyAccmeanZ</li>
<li>fBodyAccstdX</li>
<li>fBodyAccstdY</li>
<li>fBodyAccstdZ</li>
<li>fBodyAccmeanFreqX</li>
<li>fBodyAccmeanFreqY</li>
<li>fBodyAccmeanFreqZ</li>
<li>fBodyAccJerkmeanX</li>
<li>fBodyAccJerkmeanY</li>
<li>fBodyAccJerkmeanZ</li>
<li>fBodyAccJerkstdX</li>
<li>fBodyAccJerkstdY</li>
<li>fBodyAccJerkstdZ</li>
<li>fBodyAccJerkmeanFreqX</li>
<li>fBodyAccJerkmeanFreqY</li>
<li>fBodyAccJerkmeanFreqZ</li>
<li>fBodyGyromeanX</li>
<li>fBodyGyromeanY</li>
<li>fBodyGyromeanZ</li>
<li>fBodyGyrostdX</li>
<li>fBodyGyrostdY</li>
<li>fBodyGyrostdZ</li>
<li>fBodyGyromeanFreqX</li>
<li>fBodyGyromeanFreqY</li>
<li>fBodyGyromeanFreqZ</li>
<li>fBodyAccMagmean</li>
<li>fBodyAccMagstd</li>
<li>fBodyAccMagmeanFreq</li>
<li>fBodyBodyAccJerkMagmean</li>
<li>fBodyBodyAccJerkMagstd</li>
<li>fBodyBodyAccJerkMagmeanFreq</li>
<li>fBodyBodyGyroMagmean</li>
<li>fBodyBodyGyroMagstd</li>
<li>fBodyBodyGyroMagmeanFreq</li>
<li>fBodyBodyGyroJerkMagmean</li>
<li>fBodyBodyGyroJerkMagstd</li>
<li>fBodyBodyGyroJerkMagmeanFreq</li>

Tidy data is a table of average of above variables for each activity and for each subject.

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
 






