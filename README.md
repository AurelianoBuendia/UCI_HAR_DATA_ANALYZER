In order to generate the tidy data set ("result_data.txt") please follow these steps:

1. Edit the script "run_analysis.R", setting your working path in the first executable line of the script: setwd('C:/source/UCI_HAR_Dataset/data'). 
   /test and /train original folders must be under the working directory.

2. Execute the script "run_analysis.R"

EXPECTED RESULTS:

The results for the processing will be stored in the file "result_data.txt", which contains the columns explained in the file "CodeBook.md".
Data for the "mean" and "std" original columns were grouped by "Subject" and "Activity_label" and averaged.
Activity names were included in the column "Activity_name"

Thanks!
