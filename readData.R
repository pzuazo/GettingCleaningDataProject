files <- list.files("UCI HAR Dataset", recursive = TRUE)
# test data 
subject_test <- read.table(file.path("UCI HAR Dataset", files[14]), header = FALSE)
X_test <- read.table(file.path("UCI HAR Dataset", files[15]), header = FALSE)
y_test <- read.table(file.path("UCI HAR Dataset", files[16]), header = FALSE)
# train data 
subject_train <- read.table(file.path("UCI HAR Dataset", files[26]), header = FALSE)
X_train <- read.table(file.path("UCI HAR Dataset", files[27]), header = FALSE)
y_train <- read.table(file.path("UCI HAR Dataset", files[28]), header = FALSE)
# activity labels
activity_labels <- read.table(file.path("UCI HAR Dataset", files[1]), header = FALSE)
# column names
features <- read.table(file.path("UCI HAR Dataset", files[2]), header = FALSE)
