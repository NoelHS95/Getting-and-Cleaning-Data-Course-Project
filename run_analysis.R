#run_analysis.R
#Noel Hernández Sandoval
#Getting and Cleaning Data

library(data.table)
library(dplyr)

#Set your working directory
setwd("N:/Documentos/Cursos/Coursera/Getting and cleaning data/week 4/Data/UCI HAR Dataset/")

#Labels for activity

Labels_Act<- read.table("./activity_labels.txt", header = F)

#Feature Names

Feat_Names <- read.table("./features.txt", header = F)

#Reading Activity files

Test_Act <- read.table("./test/y_test.txt", header = F)
Train_Act <- read.table("./train/y_train.txt", header = F)

# Read features files
Test_Feat<- read.table("./test/X_test.txt", header = F)
Train_Feat<- read.table("./train/X_train.txt", header = F)

#Read subject files
Test_Subject <- read.table("./test/subject_test.txt", header = F)
Train_Subject <- read.table("./train/subject_train.txt", header = F)



# mean and standard deviation
Rows_meanNsd <- grep(".*mean.*|.*std.*", as.character(Feat_Names[,2]))
meanNds_names <- Feat_Names[Rows_meanNsd,2]
meanNds_names = gsub('-mean', 'Mean', meanNds_names )
meanNds_names = gsub('-std', 'Std', meanNds_names )
meanNds_names <- gsub('[-()]', '', meanNds_names )


#Merge dataframes and add labels
Train <- cbind(Train_Subject, Train_Act, Train_Feat[Rows_meanNsd])
Test <- cbind(Test_Subject, Test_Act, Test_Feat[Rows_meanNsd])
Train_Test<- rbind(Train, Test)
colnames(Train_Test) <- c("Subject", "Activity", meanNds_names )
Train_Test$Activity <- factor(Train_Test$Activity, levels = Labels_Act[,1], labels = Labels_Act[,2])
Train_Test$Subject <- as.factor(Train_Test$Subject)

# Second tidy data set with the average of each variable for each activity and each subject
Tidy_data<-aggregate(. ~Subject + Activity, Train_Test, mean)
Tidy_data<-Tidy_data[order(Tidy_data$Subject,Tidy_data$Activity),]

#Save this tidy dataset to local file
write.table(Tidy_data, file = "Tidy_data.txt",row.name=FALSE)


