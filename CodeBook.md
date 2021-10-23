Variables

"tBodyAcc" changed to "timebodyacceleration" via gsub on column names of the dataset.

"tGravityAcc" changed to "timegravityacceleration" via gsub on column names of the dataset.

"tBodyAccJerk" changed to "timebodyacceleration" via gsub on column names of the dataset. 

"tBodyGyro" changed to "timebodygyroscope" via gsub on column names of the dataset. 

"tBodyGyroJerk" changed to "timebodygyroscopejerk" via gsub on column names of the dataset.

"tBodyAccMag" changed to "timebodyaccelerationmagnitude" via gsub on column names of the dataset.

"tGravityAccMag" changed to "timegravityaccelerationmagnitude" via gsub on column names of the dataset.

"tBodyAccJerkMag" changed to "timebodyaccelerationjerkmagnitude" via gsub on column names of the dataset. 

"tBodyGyroMag" changed to "timebodygyroscopemagnitude" via gsub on column names of the dataset. 

"tBodyGyroJerkMag" changed to "timebodygyroscopejerkmagnitude" via gsub on column names of the dataset. 

"fBodyAcc" changed to "frequencybodyacceleration" vua gsub on column names of the dataset.

"fBodyAccJerk" changed to "frequencybodyaccelerationjerk" via gsub on column names of the dataset.

"fBodyGyro" changed to "frequencybodygyroscope" via gsub on column names of the dataset. 

"fBodyAccMag" changed to "frequencybodyaccelerationmagnitude" via gsub on column names of the dataset. 

"fBodyAccJerkMag" changed to "frequencybodyaccelerationjerkmagnitude" via gsub on column names of the dataset. 

"fBodyGyroMag" changed to "frequencybodygyroscopemagnitude" via gsub on column names of the dataset.

"fBodyGyroJerkMag" changed to "frequencybodygyroscopejerkmagnitude" via gsub on column names of the dataset. 



Dataset

The data recorded is derived from a series of experiments conducted among a group of 30 volunteers, ranging from 19 to 48 years old. Every individual completed six activities, which include, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING, while wearing a smartphone, SAMSUNG Galaxy S II on their waist. 



Transformation

The collection of data files were read using the fread function and manipulated into one dataframe with cbind rbind. Afterwards, the fwrite function was used to compile and format the aggregated data into a text file.
