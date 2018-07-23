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

# The Tidy_data.txt 

### Identifiers
subject - The ID of the test subject
activity - The type of activity performed when the corresponding measurements were taken

### Measurements
The data set contains 81 variables, which have to do with the means or the standard dispersion.

### Activity Labels

1. WALKING (value 1): subject was walking during the test

2. WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test

3. WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test

4. SITTING (value 4): subject was sitting during the test

5. STANDING (value 5): subject was standing during the test

6. LAYING (value 6): subject was laying down during the test


