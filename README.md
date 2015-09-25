# Coursera-Getting-and-Cleaning-Data-Project
Project for Coursera course on getting and cleaning data
Qinyi Chew

This README provides information about the script 'run_analysis.r' works. 

1. The script extracts training and test data from the UCI HAR Dataset, which was randomly partitioned into two sets, 70% as training data and 30% as test data. The dataset includes the following files:

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

2. The 'run_analysis.r' code merges training and testing feature data ('train/X_train.txt' and test/X_test.txt') into a single dataframe titled 'dataX' with 10299 observations of 591 features. The code then merges training and testing activity code data ('train/y_train.txt' and 'test/y_test.txt') into a single dataframe titled 'dataY' with 10299 rows. Similarly, it merges training and testing subject identifier data ('train/subject_train.txt' and 'test/subject_test.txt') into a single dataframe titled 'dataS' with 10299 rows. 'dataX', 'dataY' and 'dataS' dataframes are combined into a single dataframe 'data' with 10299 observations of 593 variables (591 features + subject identifier + activity code).

3. Descriptive feature names from 'features.txt' are added to describe each of the 561 features in 'data' dataframe. Subject identifier were labeled as 'Subject' and activity codes were labeled as 'Activity'. Refer to codebook.MD for information about the features.

4. It then extracts only features with 'mean()' or 'std()' (e.g. tBodyAcc-mean()-X was extracted, but not gravityMean), along with the subject identifier and activity code into a second dataframe titled 'data2'. Activity descriptions from 'activity_labels.txt' corresponding to the activity codes were read and added to a separate column titled 'Activity Description' in the 'data2' dataframe.

5. This dataframe is the melted into a long format. It is then recast as a tidy dataset with average of each retained feature for each activity and each subject.

How to run this script:
1. This code makes use of the "reshape2" R package. Pls install this package before running 'run_analysis.r'.
2. Pls download dataset from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. Unzip place and place unzipped 'UCI HAR Dataset' into R working directory.
4. Download and place 'run_analysis.r' into R working directory
5. Run 'run_analysis.r' using the command: source('run_analysis.r')
6. Output is a txt file titled 'tidydata.txt' with the average of each 'mean()' or 'std' feature for each activity and each subject
7. 'tidydata.txt' can be read into R with the following commands if 'tidydata.txt' is placed in the R working directory:

  dataread <- read.table('tidydata.txt', header = TRUE)
  View(dataread)

