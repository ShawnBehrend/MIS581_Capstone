#load data files
new_common_df<-read.csv("C:/Users/shawn/OneDrive/Shawn/CSU_global/MIS581/project_r_code/name_files/gn_all_with_status.csv")
xaxis_labels<-unlist(new_common_df[1])
xaxis<-c(1:length(xaxis_labels))
new<-as.numeric(unlist(new_common_df[2]))
common<-as.numeric(unlist(new_common_df[3]))
total<-as.numeric(unlist(new_common_df[4]))

# x axis for all plots

#plot first data line
plot(xaxis,total,main="Gender Neutral Names: \nTotal Names, New Names and Common Names\nBy Decade: 1880-2020",
     xlab="",xaxt="n",ylab="Number of Names",type="l",lwd=2,col="blue",ylim=c(20,140),cex.main=0.9,cex.axis=0.8)
# plot additional lines
lines(xaxis,new,lwd=3,col="red")
lines(xaxis,common,lwd=3,col="green")
axis(1, at=seq_along(total),labels=as.character(xaxis_labels), las=2,cex=0.6)
# legend
legend("topright",legend=c("Total","New", "Common"),cex=0.6,col=c("blue", "red", "green"),lwd=2,lty=1)
