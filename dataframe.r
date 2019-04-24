height<-c(132,151,162,139,166,147,122)
weight<-c(48,49,66,53,67,52,40)
gender<-c("male","male","female","male","female","male","female")
t<-data.frame(height,weight,gender)
print(t)
#  height weight gender
#1    132     48   male
#2    151     49   male
#3    162     66 female
#4    139     53   male
#5    166     67 female
#6    147     52   male
#7    122     40 female
print(t$gender)
#[1] male   male   female male   female male   female
#Levels: female male
t[8,]=c(161, 40, "female")
print(t)
#  height weight gender
#1    132     48   male
#2    151     49   male
#3    162     66 female
#4    139     53   male
#5    166     67 female
#6    147     52   male
#7    122     40 female
#8    161     40 female
emp.data<-data.frame(emp_ID=c(1:4),emp_name=c("Rick","dan","michalle","gary"),salary=c(150,152,130,348),start_date=as.Date(c("2012-11-29","2013-09-26","2015-12-15","2016-01-07")) ,stringsAsFactors = FALSE)
View(emp.data)
View(summary(emp.data))
r=data.frame(emp.data$emp_name,emp.data$salary)
r
#  emp.data.emp_name emp.data.salary
#1              Rick             150
#2               dan             152
#3          michalle             130
#4              gary             348
print(emp.data[1:2],)
#  emp_ID emp_name
#1      1     Rick
#2      2      dan
#3      3 michalle
#4      4     gary
print(emp.data)
#  emp_ID emp_name salary start_date
#1      1     Rick    150 2012-11-29
#2      2      dan    152 2013-09-26
#3      3 michalle    130 2015-12-15
#4      4     gary    348 2016-01-07
emp.data$dept<-c("IT","Operations","IT","HR")
emp.data
#  emp_ID emp_name salary start_date       dept
#1      1     Rick    150 2012-11-29         IT
#2      2      dan    152 2013-09-26 Operations
#3      3 michalle    130 2015-12-15         IT
#4      4     gary    348 2016-01-07         HR

print(emp.data[c(3,5),c(2,4)])
#   emp_name start_date
#3  michalle 2015-12-15
#NA     <NA>       <NA>


emp.data2<-data.frame(emp_ID=c(1:4),emp_name=c("Rick","dan","michalle","gary"),salary=c(150,152,130,348),start_date=as.Date(c("2012-11-29","2013-09-26","2015-12-15","2016-01-07")),dept=c("IT","Operations","IT","HR"),stringsAsFactors = FALSE)
emp.data3<-rbind(emp.data,emp.data2)
print(emp.data3)
#  emp_ID emp_name salary start_date       dept
#1      1     Rick    150 2012-11-29         IT
#2      2      dan    152 2013-09-26 Operations
#3      3 michalle    130 2015-12-15         IT
#4      4     gary    348 2016-01-07         HR
#5      1     Rick    150 2012-11-29         IT
#6      2      dan    152 2013-09-26 Operations
#7      3 michalle    130 2015-12-15         IT
#8      4     gary    348 2016-01-07         HR
