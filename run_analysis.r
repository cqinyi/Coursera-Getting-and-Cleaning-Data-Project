# extract package reshape2
library(reshape2)

#extract feature info: these will be the col names for the X test and train datasets
feature <- read.table(".\\features.txt")

#extract feature data test and train datasets
dataX <- rbind(read.table(".\\test\\X_test.txt"), read.table(".\\train\\X_train.txt"))

#extract activity labels in test and train datasets
dataY <- rbind(read.table(".\\test\\y_test.txt"), read.table(".\\train\\y_train.txt"))
#extract subject identifiers in test and train datasets
dataS <- rbind(read.table(".\\test\\subject_test.txt"), read.table(".\\train\\subject_train.txt"))

#combine features, activity labels and subject identifiers into "data" datatable
data <- dataX
names(data) <- feature[,2]
data["Subject"] <- dataS
data["Activity"] <- dataY

#extract only mean and std features
means<-data[grep("mean\\(\\)",names(data))]
stds <-data[grep("std\\(\\)",names(data))]
data2 <- cbind(means, stds)
data2["Subject"] <- dataS
data2["Activity"]<- dataY

#extract activity label
actlabel <- read.table(".\\activity_labels.txt")
x <- as.character(actlabel[,2])

#add new col with descriptive activity label based on activity no. (e.g. 1 = WALKING)
data2["ActivityDescription"] <- NA
for (i in 1:6){
  data2$ActivityDescription[data2$Activity==i]<-x[i]
}

#create a tidy dataset with mean of each feature
data3 <- melt(data2,id.vars = c("Subject","Activity","ActivityDescription"))
data4 <- dcast(data3, Subject + Activity + ActivityDescription ~variable,mean)

#create a data table text file
write.table(data4,"tidydata.txt",row.names = FALSE)
