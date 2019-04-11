 getwd()
#[1] "C:/Users/AKSHITA SHARMA/AppData/Roaming/SPB_Data"
setwd("C:/Users/AKSHITA SHARMA/Desktop")
getwd()
#[1] "C:/Users/AKSHITA SHARMA/Desktop"
d<-read.csv("Book1.csv")
d
#  ID     Name Salary       Date       Dept
#1  1     Rick  623.3 01-01-2001         IT
#2  2      Dan  512.0 02-02-2002 Operations
#3  3 MIchelle  656.0 23-02-2014         IT
#4  4     Ryan  729.0 15-12-2012         HR
#5  5     Gary  456.0 26-09-2011         IT
#6  6     Nima  639.0 07-01-2010 Operations
#7  7    Simon  666.0 11-04-2015         HR
#8  8    Paras  722.5 06-06-2006    Finance
print(is.data.frame(d))
#[1] TRUE
print(ncol(d))
#[1] 5
print(nrow(d))
#[1] 8
Sal<-max(d$Salary)
Sal
#[1] 729
e<-subset(d,Salary==max(Salary))
print(e)
#  ID Name Salary       Date Dept
#4  4 Ryan    729 15-12-2012   HR
print(subset(d,Dept=="IT"))
#  ID     Name Salary       Date Dept
#1  1     Rick  623.3 01-01-2001   IT
#3  3 MIchelle  656.0 23-02-2014   IT
#5  5     Gary  456.0 26-09-2011   IT

print(subset(d,Dept=="IT" & Salary>500))
#  ID     Name Salary       Date Dept
#1  1     Rick  623.3 01-01-2001   IT
#3  3 MIchelle  656.0 23-02-2014   IT
print(subset(d,))
#  ID     Name Salary       Date       Dept
#1  1     Rick  623.3 01-01-2001         IT
#2  2      Dan  512.0 02-02-2002 Operations
#3  3 MIchelle  656.0 23-02-2014         IT
#4  4     Ryan  729.0 15-12-2012         HR
#5  5     Gary  456.0 26-09-2011         IT
#6  6     Nima  639.0 07-01-2010 Operations
#7  7    Simon  666.0 11-04-2015         HR
#8  8    Paras  722.5 06-06-2006    Finance

print(subset(d,as.Date(Date)<as.Date("2011/09/26")))
#  ID     Name Salary       Date       Dept
#1  1     Rick  623.3 01-01-2001         IT
#2  2      Dan  512.0 02-02-2002 Operations
#3  3 MIchelle  656.0 23-02-2014         IT
#4  4     Ryan  729.0 15-12-2012         HR
#5  5     Gary  456.0 26-09-2011         IT
#6  6     Nima  639.0 07-01-2010 Operations
#7  7    Simon  666.0 11-04-2015         HR
#8  8    Paras  722.5 06-06-2006    Finance

print(subset(d,as.Date(Date)<as.Date("26-09-2011")))
  ID     Name Salary       Date       Dept
1  1     Rick  623.3 01-01-2001         IT
2  2      Dan  512.0 02-02-2002 Operations
3  3 MIchelle  656.0 23-02-2014         IT
4  4     Ryan  729.0 15-12-2012         HR
6  6     Nima  639.0 07-01-2010 Operations
7  7    Simon  666.0 11-04-2015         HR
8  8    Paras  722.5 06-06-2006    Finance

t<-data.frame(start<-as.Date(c("2012-01-12")))
write.csv(t,"test1.csv")