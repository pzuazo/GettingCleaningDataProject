library("data.table")
source("readData.R")
source("mergeData.R")
source("activities.R")
source("target.R")

# Extracts only the measurements on the mean and standard deviation for each measurement
dataset.extraction <- dataset[,c("Subject", "Activity", target)]
names(dataset.extraction) <- c("Subject", "Activity", target.newnames)

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidydata <- data.table(dataset.extraction)
setkey(tidydata, "Subject", "Activity")
measurements <- c(3:ncol(tidydata) )
tidydata <- tidydata[, lapply(.SD, mean), by = "Subject,Activity", .SDcols = measurements]
        
tidydata <- tidydata[, lapply(.SD, format, scientific = TRUE)]    # Scientific number format for better outlook

write.table(tidydata,  file = "tidydata.txt", quote = FALSE, sep = "\t", row.names = FALSE)
