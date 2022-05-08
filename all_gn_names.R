#load data files
gn_1880_1889_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1880_1889/comp_gn_names_F_1889.csv")
gn_1890_1899_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1890_1899/comp_gn_names_F_1899.csv")
gn_1900_1909_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1900_1909/comp_gn_names_F_1909.csv")
gn_1910_1919_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1910_1919/comp_gn_names_F_1919.csv")
gn_1920_1929_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1920_1929/comp_gn_names_F_1929.csv")
gn_1930_1939_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1930_1939/comp_gn_names_F_1939.csv")
gn_1940_1949_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1940_1949/comp_gn_names_F_1949.csv")
gn_1950_1959_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1950_1959/comp_gn_names_F_1959.csv")
gn_1960_1969_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1960_1969/comp_gn_names_F_1969.csv")
gn_1970_1979_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1970_1979/comp_gn_names_F_1979.csv")
gn_1980_1989_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1980_1989/comp_gn_names_F_1989.csv")
gn_1990_1999_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/1990_1999/comp_gn_names_F_1999.csv")
gn_2000_2009_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/2000_2009/comp_gn_names_F_2009.csv")
gn_2010_2020_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/2010_2020/comp_gn_names_F_2020.csv")

# save name and year columns only
gn_1889<-data.frame(c(gn_1880_1889_df[2],gn_1880_1889_df[6]))
gn_1899<-data.frame(c(gn_1890_1899_df[2],gn_1890_1899_df[6]))
gn_1909<-data.frame(c(gn_1900_1909_df[2],gn_1900_1909_df[6]))
gn_1919<-data.frame(c(gn_1910_1919_df[2],gn_1910_1919_df[6]))
gn_1929<-data.frame(c(gn_1920_1929_df[2],gn_1920_1929_df[6]))
gn_1939<-data.frame(c(gn_1930_1939_df[2],gn_1930_1939_df[6]))
gn_1949<-data.frame(c(gn_1940_1949_df[2],gn_1940_1949_df[6]))
gn_1959<-data.frame(c(gn_1950_1959_df[2],gn_1950_1959_df[6]))
gn_1969<-data.frame(c(gn_1960_1969_df[2],gn_1960_1969_df[6]))
gn_1979<-data.frame(c(gn_1970_1979_df[2],gn_1970_1979_df[6]))
gn_1989<-data.frame(c(gn_1980_1989_df[2],gn_1980_1989_df[6]))
gn_1999<-data.frame(c(gn_1990_1999_df[2],gn_1990_1999_df[6]))
gn_2009<-data.frame(c(gn_2000_2009_df[2],gn_2000_2009_df[6]))
gn_2020<-data.frame(c(gn_2010_2020_df[2],gn_2010_2020_df[6]))

# row bind all names/years together
gn_all<-rbind(gn_1889,gn_1899,gn_1909,gn_1919,gn_1929,gn_1939,gn_1949,gn_1959,gn_1969,gn_1979,
              gn_1989,gn_1999,gn_2009,gn_2020)

#write the appended file  
write.csv(gn_all,"C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/gn_all.csv")
