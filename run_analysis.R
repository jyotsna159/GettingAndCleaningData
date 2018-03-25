
#reading train sets
train_x = read.table("./train/X_train.txt")
train_y = read.table("./train/y_train.txt")
train_sub = read.table("./train/subject_train.txt")
#combining train sets
train_data = cbind(train_sub,train_y,train_x)

#reading test sets
test_x = read.table("./test/X_test.txt")
test_y = read.table("./test/y_test.txt")
test_sub = read.table("./test/subject_test.txt")
#combining test sets
test_data = cbind(test_sub,test_y,test_x)

# Merges the training and the test sets to create one data set.
data_set <- rbind(train_data,test_data)

#Adding labels to feature columns
label_feature <- read.table("features.txt")
label1 <- gsub("-","",label_feature[,2])
colNames <- sub("\\(","",label1)
col_Names <- sub("\\)","",colNames)

#Adding all column names
labels_all <- c("subject","activity",col_Names)
#Assigning column names to data_set
names(data_set) <- labels_all

#extracting mean and standard deviation columns
new_dataset <- data_set[,grep("subject|activity|mean|std",names(data_set))]

#Assign descriptive activity names to name the activities in the data set
act_name <- function (x){
  for (i in seq_along(x)) {
    if(x[i]==1){
      x[i]<- "walking"
    }else if(x[i]==2){
      x[i]<- "walkingUpStairs"
    }else if(x[i]==3){
      x[i]<- "walkingDownStairs"
    }else if(x[i]==4){
      x[i]<- "sitting"
    }else if(x[i]==5){
      x[i]<- "standing"
    }else if(x[i]==6){
      x[i]<- "laying"
    }else{
      x[i] <- "NA"
    }
  }
  
  x
}
#setting activity number to names
new_data <- act_name(new_dataset[,2])
#setting activity names to new_dataset
new_dataset[,2] <- new_data

#creating table of mean for each variable, grouped by subject and activity
tidy_data <- aggregate(new_dataset[,-(1:2)],by = list(new_dataset$subject,new_dataset$activity), mean )

#naming column 1 & column 2 of tidy_data 
names(tidy_data)[1] <- "subject"
names(tidy_data)[2] <- "activity"

names(tidy_data) <- tolower(names(tidy_data))

#writing data to file tidy_data.txt
write.table(tidy_data,"tidy_data.txt",row.name=FALSE )
