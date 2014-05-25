# target columns for point 2 requirement
meas_mean <- grep("-mean()", features[,2], fixed = TRUE)
meas_std <- grep("-std()", features[,2], fixed = TRUE)
target <- sort(  unique(c(meas_mean, meas_std))  )
target <- as.character(features[target,2])

target.newnames <- target
target.newnames <- gsub("-mean()-", "Mean", target.newnames, fixed = TRUE)
target.newnames <- gsub("-std()-", "Stdev", target.newnames, fixed = TRUE)
target.newnames <- gsub("-mean()", "Mean", target.newnames, fixed = TRUE)
target.newnames <- gsub("-std()", "Stdev", target.newnames, fixed = TRUE)
target.newnames <- gsub("BodyBody", "Body", target.newnames, fixed = TRUE)
