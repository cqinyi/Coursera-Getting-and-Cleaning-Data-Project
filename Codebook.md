# Coursera-Getting-and-Cleaning-Data-Project
Project for Coursera course on getting and cleaning data

This codebook provide information about variables in the dataset used by 'run_analysis.r'

Dataset obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Experiments were carried out on 30 volunteers who were strapped with a Samsung cellphone. They performed 6 activities (walking, walking downstairs, walking upstairs, standing, sitting and lying). 3-axial accelerometer and gyroscope signals were obtained, filtered and transformed into 561 different features in the time and frequency domain. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
Signals are normalised to a range of [-1, 1].

- tBodyAcc-XYZ : time domain body acceleration signal in X, Y or Z direction
- tGravityAcc-XYZ: time domain gravity acceleration signal in X, Y or Z direction
- tBodyAccJerk-XYZ - time domain body acceleration jerk signal in X, Y or Z direction
- tBodyGyro-XYZ - time domain body gyroscope signal in X, Y or Z direction
- tBodyGyroJerk-XYZ - time domain body gyroscope jerk signal in X, Y or Z direction
- tBodyAccMag - time domain body gyroscope acceleration magnitude
- tGravityAccMag - time domain gravity acceleration magnitude
- tBodyAccJerkMag - time domain acceleration jerk magnitude  
- tBodyGyroMag - time domain body gyroscope signal magnitude
- tBodyGyroJerkMag time domain body gyroscope jerk magnitude
- fBodyAcc-XYZ - frequency domain body acceleration signal in X, Y or Z direction
- fBodyAccJerk-XYZ - frequency domain body acceleration jerk signal in X, Y or Z direction
- fBodyGyro-XYZ - frequency domain body gyroscope signal in X, Y or Z direction
- fBodyAccMag - frequency domain body acceleration magnitude
- fBodyAccJerkMag - frequency domain body acceleration jerk magnitude
- fBodyGyroMag - frequency domain body signal magnitude
- fBodyGyroJerkMag - frequency domain body gyroscope jerk magnitude

Another set of features that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between two vectors

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean 
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The obtained dataset was randomly partitioned into two sets, 70% as training data and 30% as test data. The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

Other files are available in the data set, but are not used for the purpose of this exercise. (e.g. 'train/Inertial Signals/total_acc_x_train.txt')

Subsequently, running the 'run_analysis.r' code retained only the 'mean()' and 'std()' features (e.g. tBodyAcc-mean()-X was retained, but not gravityMean). Each row is identified by the following fields:
- Subject: ranges from 1:30 and identifies the subject who performed the activity for each window sample
- Activity: ranges from 1:6. Each corresponds to a different activity activity code which corresponds to an activity (see 'Activity Description' below)
- Activity Description: descriptive label for each activity code
    - 1: Walking
    - 2: Walking Upstairs
    - 3: Walking Downstairs
    - 4: Sitting
    - 5: Standing
    - 6: Laying
 
The output tidy data file from 'run_analysis.r' consists only of the average of each retained feature for each activity and each subject

For more details on the data:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
