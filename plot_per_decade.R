#load data files
sum_1880_1889_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1880_1889/1880_1889_summary_table.csv")
sum_1890_1899_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1890_1899/1890_1899_summary_table.csv")
sum_1900_1909_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1900_1909/1900_1909_summary_table.csv")
sum_1910_1919_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1910_1919/1910_1919_summary_table.csv")
sum_1920_1929_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1920_1929/1920_1929_summary_table.csv")
sum_1930_1939_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1930_1939/1930_1939_summary_table.csv")
sum_1940_1949_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1940_1949/1940_1949_summary_table.csv")
sum_1950_1959_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1950_1959/1950_1959_summary_table.csv")
sum_1960_1969_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1960_1969/1960_1969_summary_table.csv")
sum_1970_1979_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1970_1979/1970_1979_summary_table.csv")
sum_1980_1989_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1980_1989/1980_1989_summary_table.csv")
sum_1990_1999_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1990_1999/1990_1999_summary_table.csv")
sum_2000_2009_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/2000_2009/2000_2009_summary_table.csv")
sum_2010_2020_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/2010_2020/2010_2020_summary_table.csv")

# x axis for all plots
xaxis<-c(as.numeric(unlist(sum_1880_1889_df[2])),as.numeric(unlist(sum_1890_1899_df[2])),
         as.numeric(unlist(sum_1900_1909_df[2])),as.numeric(unlist(sum_1910_1919_df[2])),
         as.numeric(unlist(sum_1920_1929_df[2])),as.numeric(unlist(sum_1930_1939_df[2])),
         as.numeric(unlist(sum_1940_1949_df[2])),as.numeric(unlist(sum_1950_1959_df[2])),
         as.numeric(unlist(sum_1960_1969_df[2])),as.numeric(unlist(sum_1970_1979_df[2])),
         as.numeric(unlist(sum_1980_1989_df[2])),as.numeric(unlist(sum_1990_1999_df[2])),
         as.numeric(unlist(sum_2000_2009_df[2])),as.numeric(unlist(sum_2010_2020_df[2])))
yaxis_f<-c(as.numeric(unlist(sum_1880_1889_df[8])),as.numeric(unlist(sum_1890_1899_df[8])),
           as.numeric(unlist(sum_1900_1909_df[8])),as.numeric(unlist(sum_1910_1919_df[8])),
           as.numeric(unlist(sum_1920_1929_df[8])),as.numeric(unlist(sum_1930_1939_df[8])),
           as.numeric(unlist(sum_1940_1949_df[8])),as.numeric(unlist(sum_1950_1959_df[8])),
           as.numeric(unlist(sum_1960_1969_df[8])),as.numeric(unlist(sum_1970_1979_df[8])),
           as.numeric(unlist(sum_1980_1989_df[8])),as.numeric(unlist(sum_1990_1999_df[8])),
           as.numeric(unlist(sum_2000_2009_df[8])),as.numeric(unlist(sum_2010_2020_df[8])))
yaxis_m<-c(as.numeric(unlist(sum_1880_1889_df[11])),as.numeric(unlist(sum_1890_1899_df[11])),
           as.numeric(unlist(sum_1900_1909_df[11])),as.numeric(unlist(sum_1910_1919_df[11])),
           as.numeric(unlist(sum_1920_1929_df[11])),as.numeric(unlist(sum_1930_1939_df[11])),
           as.numeric(unlist(sum_1940_1949_df[11])),as.numeric(unlist(sum_1950_1959_df[11])),
           as.numeric(unlist(sum_1960_1969_df[11])),as.numeric(unlist(sum_1970_1979_df[11])),
           as.numeric(unlist(sum_1980_1989_df[11])),as.numeric(unlist(sum_1990_1999_df[11])),
           as.numeric(unlist(sum_2000_2009_df[11])),as.numeric(unlist(sum_2010_2020_df[11])))
yaxis_all<-c(as.numeric(unlist(sum_1880_1889_df[14])),as.numeric(unlist(sum_1890_1899_df[14])),
           as.numeric(unlist(sum_1900_1909_df[14])),as.numeric(unlist(sum_1910_1919_df[14])),
           as.numeric(unlist(sum_1920_1929_df[14])),as.numeric(unlist(sum_1930_1939_df[14])),
           as.numeric(unlist(sum_1940_1949_df[14])),as.numeric(unlist(sum_1950_1959_df[14])),
           as.numeric(unlist(sum_1960_1969_df[14])),as.numeric(unlist(sum_1970_1979_df[14])),
           as.numeric(unlist(sum_1980_1989_df[14])),as.numeric(unlist(sum_1990_1999_df[14])),
           as.numeric(unlist(sum_2000_2009_df[14])),as.numeric(unlist(sum_2010_2020_df[14])))
#plot first data line
plot(xaxis,yaxis_f,main="Gender Neutral Names: \nRatio of Occurrances v Total Occurrances \n1880-2020",
     xlab="Year",ylab="Ratio",type="l",lwd=2,col="blue",ylim=c(0.0,0.6),cex.main=0.9,las=2)
# plot additional lines
lines(xaxis,yaxis_m,lwd=3,col="red")
# legend
legend("topright",legend=c("Female","Male"),cex=0.6,col=c("blue", "red"),lwd=2,lty=1)
