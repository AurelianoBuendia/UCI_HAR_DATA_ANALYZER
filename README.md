In order to execute the script "run_analysis.R", you need to set your workin path in the first executable line of the script:
setwd('C:/source/UCI_HAR_Dataset/data')

After this the script is ready to be executed. /test and /train original folders must be under the working directory.
The results for the processing will be stored in the file "result_data.txt", which contains the columns named below.
Data for the "mean" and "std" original columns were grouped by "Sbject" and "Activity_label" and averaged.
Activy names were included in the column "Activity_name"
Thanks!

"Subject" 
"Activity_label" 
"tBodyAccmeanX" 
"tBodyAccmeanY" 
"tBodyAccmeanZ" 
"tBodyAccstdX" 
"tBodyAccstdY" 
"tBodyAccstdZ" 
"tGravityAccmeanX" 
"tGravityAccmeanY" 
"tGravityAccmeanZ" 
"tGravityAccstdX" 
"tGravityAccstdY" 
"tGravityAccstdZ" 
"tBodyAccJerkmeanX" 
"tBodyAccJerkmeanY" 
"tBodyAccJerkmeanZ" 
"tBodyAccJerkstdX" 
"tBodyAccJerkstdY" 
"tBodyAccJerkstdZ" 
"tBodyGyromeanX" 
"tBodyGyromeanY" 
"tBodyGyromeanZ" 
"tBodyGyrostdX" 
"tBodyGyrostdY" 
"tBodyGyrostdZ" 
"tBodyGyroJerkmeanX" 
"tBodyGyroJerkmeanY" 
"tBodyGyroJerkmeanZ" 
"tBodyGyroJerkstdX" 
"tBodyGyroJerkstdY" 
"tBodyGyroJerkstdZ" 
"tBodyAccMagmean" 
"tBodyAccMagstd" 
"tGravityAccMagmean" 
"tGravityAccMagstd" 
"tBodyAccJerkMagmean" 
"tBodyAccJerkMagstd" 
"tBodyGyroMagmean" 
"tBodyGyroMagstd" 
"tBodyGyroJerkMagmean" 
"tBodyGyroJerkMagstd" 
"fBodyAccmeanX" 
"fBodyAccmeanY" 
"fBodyAccmeanZ" 
"fBodyAccstdX" 
"fBodyAccstdY" 
"fBodyAccstdZ" 
"fBodyAccmeanFreqX" 
"fBodyAccmeanFreqY" 
"fBodyAccmeanFreqZ" 
"fBodyAccJerkmeanX" 
"fBodyAccJerkmeanY" 
"fBodyAccJerkmeanZ" 
"fBodyAccJerkstdX" 
"fBodyAccJerkstdY" 
"fBodyAccJerkstdZ" 
"fBodyAccJerkmeanFreqX" 
"fBodyAccJerkmeanFreqY" 
"fBodyAccJerkmeanFreqZ" 
"fBodyGyromeanX" 
"fBodyGyromeanY" 
"fBodyGyromeanZ" 
"fBodyGyrostdX" 
"fBodyGyrostdY" 
"fBodyGyrostdZ" 
"fBodyGyromeanFreqX" 
"fBodyGyromeanFreqY" 
"fBodyGyromeanFreqZ" 
"fBodyAccMagmean" 
"fBodyAccMagstd" 
"fBodyAccMagmeanFreq" 
"fBodyBodyAccJerkMagmean" 
"fBodyBodyAccJerkMagstd" 
"fBodyBodyAccJerkMagmeanFreq" 
"fBodyBodyGyroMagmean" 
"fBodyBodyGyroMagstd" 
"fBodyBodyGyroMagmeanFreq" 
"fBodyBodyGyroJerkMagmean" 
"fBodyBodyGyroJerkMagstd" 
"fBodyBodyGyroJerkMagmeanFreq" 
"Activity_name"