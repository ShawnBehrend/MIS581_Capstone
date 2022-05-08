install.packages("ggplot2")
# Load ggplot2
library("ggplot2")

sum_all_decades_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/all_decades_summary_table.csv")

#correlation for female names
f_test_set<-data.frame(sum_all_decades_df$Years,sum_all_decades_df$F.occurrances.of.GN.names,sum_all_decades_df$Total.F.occurrances)
f_gn_names<-as.numeric(unlist(f_test_set[2]))
f_all_names<-as.numeric(unlist(f_test_set[3]))
f_gn_all<-data.frame(f_gn_names,f_all_names)
# correlation tests
f_gn_scatter_plot <- ggplot(f_gn_all, aes(f_gn_names, f_all_names))
f_gn_scatter_plot + geom_point() + labs(title="Female Name Usage: Gender-Neutral versus All",x = "GN Names - Female", y = "All Names - Female") + geom_smooth(method="lm")
cortest_f<-cor.test(f_gn_names, f_all_names, method = "pearson")

sink("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/f_gn_names_corr.txt")
print(cortest_f)
sink()  # returns output to the console
#----
#correlation for male names
m_test_set<-data.frame(sum_all_decades_df$Years,sum_all_decades_df$M.occurrances.of.GN.names,sum_all_decades_df$Total.M.occurrances)
m_gn_names<-as.numeric(unlist(m_test_set[2]))
m_all_names<-as.numeric(unlist(m_test_set[3]))
m_gn_all<-data.frame(m_gn_names,m_all_names)
# correlation tests
m_gn_scatter_plot <- ggplot(m_gn_all, aes(m_gn_names, m_all_names))
m_gn_scatter_plot + geom_point() + labs(title="Male Name Usage: Gender-Neutral versus All",x = "GN Names - Male", y = "All Names - Male") + geom_smooth(method="lm")
cortest_m<-cor.test(m_gn_names, m_all_names, method = "pearson")
#---
sink("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/f_gn_names_corr.txt")
print(cortest_f)
sink()  # returns output to the console

sink("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/m_gn_names_corr.txt")
print(cortest_m)
sink()  # returns output to the console