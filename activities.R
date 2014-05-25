### Uses descriptive activity names to name the activities in the data set

# getting rid of underscores
activity_labels[,2] <- gsub("_", "", activity_labels[,2])

# performing the replacement
for (i in 1:6){
        dataset[,"Activity"] <- gsub(activity_labels[i,1], activity_labels[i,2], dataset[,"Activity"])
}
