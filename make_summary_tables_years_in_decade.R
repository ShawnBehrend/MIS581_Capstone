#input what years will be analyzed, based on available data files
decade1<-c(1880:1889)
decade2<-decade1+10
decade3<-decade2+10
decade4<-decade3+10
decade5<-decade4+10
decade6<-decade5+10
decade7<-decade6+10
decade8<-decade7+10
decade9<-decade8+10
decade10<-decade9+10
decade11<-decade10+10
decade12<-decade11+10
decade13<-decade12+10
decade14<-c(2010:2020)
#grab first and last year for use in file names
all_years<-decade14
first_year<-min(all_years)
last_year<-max(all_years)
#establish first index for data frame based on years chosen for analysis
firstyearminus1<-all_years[1]-1
#--- MAKE TABLE
# set up a data frame full of "NA" to store the desired info by year from the data files
years_per_decade_table<-data.frame(matrix(NA,length(all_years),13))
names(years_per_decade_table)<-c("Year","# of GN Names","Total Names","Ratio of GN Names to Total Names",
                                 "F occurrances of GN names","Total F occurrances","Ratio of F GN Occur to Total F Occur",
                                 "M occurrances of GN names","Total M occurrances","Ratio of M GN Occur to Total M Occur",
                                 "Total GN Occurrances","Total Occurrances","Ratio of GN Occurrances to Total Occurrances")
# start years loop
for (year in all_years) {
# years per decade table
# read in the gn names files for the year
#female gn files
year_info_gn_f_df<-read.csv(paste0("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/",first_year,"_",
                             last_year,"/comp_gn_names_F_",year,".csv"),fileEncoding="UTF-8-BOM",colClasses=c(Name="character",Sex="character"))
year_info_gn_f_names<-year_info_gn_f_df[[2]]
year_info_gn_f_occur<-year_info_gn_f_df[[4]]
sum_year_info_gn_f_occur<-sum(year_info_gn_f_occur,na.rm=TRUE)
count_year_info_gn_f_names<-length(year_info_gn_f_names)
# male gn files
year_info_gn_m_df<-read.csv(paste0("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/",first_year,"_",
                             last_year,"/comp_gn_names_M_",year,".csv"),fileEncoding="UTF-8-BOM",colClasses=c(Name="character",Sex="character"))
year_info_gn_m_names<-year_info_gn_m_df[[2]]
year_info_gn_m_occur<-year_info_gn_m_df[[4]]
sum_year_info_gn_m_occur<-sum(year_info_gn_m_occur,na.rm=TRUE)
count_year_info_gn_m_names<-length(year_info_gn_m_names)
# sum of gn occurrances
sum_gn_occur<-sum_year_info_gn_f_occur+sum_year_info_gn_m_occur
# read in the total names files for the year
# female all names
year_info_all_f_df<-read.csv(paste0("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/",first_year,"_",
                                   last_year,"/",year,"_f_names_top1000.txt"),fileEncoding="UTF-8-BOM",colClasses=c(Name="character",Sex="character"))
year_info_all_f_names<-year_info_all_f_df[[2]]
year_info_all_f_occur<-year_info_all_f_df[[4]]
sum_year_info_all_f_occur<-sum(year_info_all_f_occur,na.rm=TRUE)
count_year_info_all_f_names<-length(year_info_all_f_names)
# male all names
year_info_all_m_df<-read.csv(paste0("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/",first_year,"_",
                                    last_year,"/",year,"_m_names_top1000.txt"),fileEncoding="UTF-8-BOM",colClasses=c(Name="character",Sex="character"))
year_info_all_m_names<-year_info_all_m_df[[2]]
year_info_all_m_occur<-year_info_all_m_df[[4]]
sum_year_info_all_m_occur<-sum(year_info_all_m_occur,na.rm=TRUE)
count_year_info_all_m_names<-length(year_info_all_m_names)
# sum of all names and occur
count_year_info_all_names<-sum(count_year_info_all_m_names,count_year_info_all_f_names)
# sum of all occurrences
sum_all_occur<-sum_year_info_all_f_occur+sum_year_info_all_m_occur
#ratios
ratio_gn_and_all_names<-count_year_info_gn_f_names/count_year_info_all_names
ratio_f_gn_and_all_occur<-sum_year_info_gn_f_occur/sum_year_info_all_f_occur
ratio_m_gn_and_all_occur<-sum_year_info_gn_m_occur/sum_year_info_all_m_occur
ratio_gn_and_all_occur<-sum_gn_occur/sum_all_occur
# assemble row in table
i<-year-firstyearminus1
years_per_decade_table[i,]<-c(year,count_year_info_gn_m_names,count_year_info_all_names,ratio_gn_and_all_names,
                                 sum_year_info_gn_f_occur,sum_year_info_all_f_occur,ratio_f_gn_and_all_occur,
                                 sum_year_info_gn_m_occur,sum_year_info_all_m_occur,ratio_m_gn_and_all_occur,
                                 sum_gn_occur,sum_all_occur,ratio_gn_and_all_occur)
}
#save to data file
write.csv(x=years_per_decade_table,file=paste0("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/",
                                  first_year,"_",last_year,"/",first_year,"_",last_year,"_summary_table.csv"))
