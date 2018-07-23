# CodeBook Description

This document is a codebook that provides descriptions of the variables, the data, and all transformations and work that I performed to clean up the data.


The original dataset includes the following files:

1. 'README.txt'

2. 'features_info.txt': Shows information about the variables used on the feature vector.

3. 'features.txt': List of all features.

4. 'activity_labels.txt': Links the class labels with their activity name.

5. 'train/X_train.txt': Training set.

6. 'train/y_train.txt': Training labels.

7. 'test/X_test.txt': Test set.

8. 'test/y_test.txt': Test labels.

## Transformations functions

1. Merges the training and the test sets to create one data set. Source code "run_analysis.R" loads both test and train data, processes them, and merges the results into one dataset.

2. Extracts only the measurements on the mean and standard deviation for each measurement. Source code "run_analysis.R" extracts the mean and standard deviation data into one dataset with appropriate column names.

3. Uses descriptive activity names to name the activities in the data set. Source code "run_analysis.R" loads the descriptive feature and activity labels.

4. Appropriately labels the data set with descriptive variable names Source code "run_analysis.R" adds appropriately descriptive variable names to the large dataset columns (variables).


