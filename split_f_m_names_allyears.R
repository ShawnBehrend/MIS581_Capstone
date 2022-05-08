#input what years will be analyzed, based on available data files
allyears<-c(1880:2020)

#establish first index for data frame based on years chosen for analysis
firstyearminus1<-allyears[1]-1
#get index for last year to be analyzed, used in plot later
allyears_last<-length(allyears)

# set up a data frame full of "NA" to store the desired name and sex with each year and rank from the data files
year_rank<-data.frame(matrix(NA,length(allyears),4))

# loop for each year to be searched
for (year in allyears) {
  #load names by year file
  yob_file <- read.csv(paste0("C:/Users/shawn/Shawn/CSU_global/MIS581/names/yob",year,".txt"), header=FALSE)
  #add headers
  names(yob_file) <- c("Name","Sex","Occurance")

#which lines are female and male names
is_f<-yob_file$Sex=="F"
firstf<-min(which(is_f==TRUE))
lastf<-max(which(is_f==TRUE))
is_m<-yob_file$Sex=="M"
firstm<-min(which(is_m==TRUE))
lastm<-max(which(is_m==TRUE))
#split file into female and male names
yob_file_f<-yob_file[firstf:lastf,]
yob_file_m<-yob_file[firstm:lastm,]
# add columns/headers for year and rank to the file
f_rows<-nrow(yob_file_f)
m_rows<-nrow(yob_file_m)
# year
Year<-year
#rank
f_Rank<-c(1:f_rows)
m_Rank<-c(1:m_rows)
# add rank and year to dataset
#cbind
yob_file_f_rank<-cbind(yob_file_f,f_Rank,Year)
yob_file_m_rank<-cbind(yob_file_m,m_Rank,Year)
# subset only top 100 male names
yob_file_m_1000<-yob_file_m_rank[c(1:1000),,]
# subset only top 1000 female names
yob_file_f_1000<-yob_file_f_rank[c(1:1000),,]
# write file with top 1000 F or top 100 M names
write.csv(x=yob_file_f_1000,file=paste0("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/",year,"_f_names_top1000.txt"))
write.csv(x=yob_file_m_1000,file=paste0("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/",year,"_m_names_top1000.txt"))   
}
