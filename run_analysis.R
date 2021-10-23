    zip_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(zip_url, "files.zip")
    unzip("files.zip", exdir = "dataset")

    install.packages("data.table")
    install.packages("dplyr")

    
    library(data.table)
    library(dplyr)
    
    
    labels <- fread("dataset/UCI Har Dataset/activity_labels.txt", 
                    col.names = c("classes", "activities"))

    features_dataset <- fread("dataset/UCI Har Dataset/features.txt",
                              col.names = c("unit", "feature"))
    
    x_training_set <- fread("dataset/UCI Har Dataset/train/X_train.txt",
                            col.names = features_dataset[, feature])
    
    
    x_testing_set <- fread("dataset/UCI HAR Dataset/test/X_test.txt", 
                           col.names = features_dataset[, feature])
    
    
    x_data <- rbind(x_training_set, x_testing_set)
    
    
    y_training_labels <- fread("dataset/UCI Har Dataset/train/y_train.txt", 
                               col.names = "activity")
    
    
    y_testing_labels <- fread("dataset/UCI Har Dataset/test/y_test.txt", 
                              col.names = "activity")
    
    
    y_data <- rbind(y_training_labels, y_testing_labels)
    
    
    subject_training <- fread("dataset/UCI Har Dataset/train/subject_train.txt",
                              col.names = "participant")
   
    
    subject_testing <- fread("dataset/UCI Har Dataset/test/subject_test.txt",
                             col.names = "participant")
    
    
    subject_data <- rbind(subject_training, subject_testing)
    
    
    compiled_dataframe <- cbind(subject_data, x_data, y_data)
    
    
    measurements <- compiled_dataframe %>% select(participant, activity, 
                                                  contains("mean"), contains("std"))
    
    
    measurements$activity <- labels[measurements$activity, 2]
    
    
    colnames(measurements) <- tolower(names(measurements))
    
    colnames(measurements) <- gsub("-", "", colnames(measurements))
    
    colnames(measurements) <- gsub("[()]", "", colnames(measurements))
    
    colnames(measurements) <- gsub("tbodyacc", "timebodyacceleration", colnames(measurements))
    
    colnames(measurements) <- gsub("tgravityacc", "timegravityacceleration", colnames(measurements))
    
    colnames(measurements) <- gsub("tbodygyro", "timebodygyroscope", colnames(measurements))
    
    colnames(measurements) <- gsub("fbodyacc", "frequencybodyacceleration", colnames(measurements))
    
    colnames(measurements) <- gsub("fbodygyro", "frequencybodygyroscope", colnames(measurements))
    
    colnames(measurements) <- gsub("bodybody", "body", colnames(measurements))
    
    colnames(measurements) <- gsub("mag", "magnitude", colnames(measurements))
    
    
    compiled_dataset <- aggregate(. ~participant + activity, measurements, mean)
    
    
    fwrite(compiled_dataset, "tidydata.txt")
    
    