
++Experimental design:

Capturing the human activites(walking, walking_upsatirs, walking_downstairs, standing, laying and sitting) using smartphones
(samsung galaxy s2) by their embedded accelerometer and gyroscope , We captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width 
sliding windows of 2.56 sec and 50% overlap (128 readings/window).The sensor acceleration signal, which has gravitational and 
body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.The gravitational 
force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each 
window, a vector of features was obtained by calculating variables from the time and frequency domain.

++Raw data:
it contains the subject of the experiment, the activity the suject is doing, the body linear acceleration and angular velocity 
were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these 
three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, 
tBodyGyroJerkMag) (prefix 't' to denote time), a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag (Note the 'f' to indicate frequency 
domain signals). '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Then thers is the set of variables that were estimated from those signals are: 

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
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

++required to do :
1- Extracting on the measurements on the mean and standard deviation for each measurement
2- using descriptive names for the activites
3- using descriptive names for the variables 
4- getting the average of each variable for each activity and each subject

++Processed data (Codebook):
first, we merged the subject, activity and signals data in one table for training and test data sets and merged them both.
secondly, we extracted only the measurements on the mean and standard deviation for each measurement. Then, we use descriptive
names for both the activites and the variables. after that, we created an independent tidy data set with the average of each 
variable for each activity and each subject.

