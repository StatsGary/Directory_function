#File directory operations

wel_str <- paste0("Welcome: ", Sys.getenv("USERNAME"), " (",Sys.getenv("COMPUTERNAME"), ")", ". Today's date is: ", Sys.Date(), ".")
message(wel_str)

#Get the current working directory
getwd()
setwd("C:\\Users\\GaryHutson\\Desktop\\Gary")
getwd()

#Create a new directory in that folder
dir.create("R_Dir_Outputs")
setwd("R_Dir_Outputs")
getwd()

#Create files in new directory
file.create("new_text_file.txt")
file.create("new_R_file.R")

#Create lots of files in one go
sapply(paste0("file", 1:100, ".txt"), 
       file.create)

#Copy a folder 
file.copy("file1.txt", "C:\\Users\\GaryHutson\\Desktop\\Gary")

#List all files in a folder
list.files("C:\\Users\\GaryHutson\\Desktop\\Gary",recursive = TRUE, full.names = TRUE)

#List all files that match a certain pattern

list.files(pattern = ".txt")

#Create csv files

sapply(paste0("file", 1:100, ".csv"), 
       file.create)

#Read in all csv files

#all_csv <- lapply(list.files(pattern=".csv"), read.csv)

#Get the file snapshot of current directory

snap <- fileSnapshot()
snap

an_snap <- fileSnapshot("C:\\Users\\GaryHutson\\Desktop")
an_snap

#Get info on single file

fi_df <- file.info("file53.txt")
fi_df$mtime
fi_mtime <- file.mtime("C:\\Users\\GaryHutson\\Desktop")


#How to delete files

unlink("file51.txt")

#Delete another file 
file.remove("file52.txt")

#Delete a directory 
dir.create("test")
unlink("test", recursive = T)

#Check if file exists

ifelse(file.exists("file53.txt"), "Yes it does", "Nope")
#file.exists("file53.txt")

#Check if folder exists
dir.create("test")
file.exists("test")
dir.exists("test")

#Get the base name of a file 
basename("C:\\Users\\GaryHutson\\Desktop\\ML_Hyperlink_Repo.txt")
#Get the directory name of a file
dirname("C:\\Users\\GaryHutson\\Desktop\\ML_Hyperlink_Repo.txt")

#How to open a file selection window
file.choose()
df <- file.choose()
df

#How to move files in R
library(filesstrings)
getwd()
file.move(paste0(getwd(), "/file1.txt"),
          "C:\\Users\\GaryHutson\\Desktop\\")


#Get parent frame in setwd

setwd("../")
getwd()

#Get default directory
setwd("~/")
getwd()


#Clean up to remove directory



setwd("C:\\Users\\GaryHutson\\Desktop\\Gary\\")
getwd()
unlink("R_Dir_Outputs", recursive = T)
