# rename test columns
names(X_test) <- features[,2]
# include columns for activity and subject
X_test[,"Activity"] <- y_test[,1]
X_test[,"Subject"] <- subject_test[,1]


# rename train columns
names(X_train) <- features[,2]
# include columns for activity and subject
X_train[,"Activity"] <- y_train[,1]
X_train[,"Subject"] <- subject_train[,1]


# full dataset
dataset <- rbind(X_test, X_train)
