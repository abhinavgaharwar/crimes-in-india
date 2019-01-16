library(dplyr)
x=read.csv("C:/Users/Abhinav/Downloads/roi/data anlysis of crimes in india/rajanand-crime-in-india/39_Specific_purpose_of_kidnapping_and_abduction.csv")
str(x)
##reason for kidnapping

a=x%>%group_by(area= ï..Area_Name ,Group_Name)%>%filter(Group_Name !="Kidnap - Total")%>%
  summarise(t=sum(as.integer(as.character(K_A_Cases_Reported))))%>%top_n(2)
View(a)

##2
library(tidyr)
q=read.csv("C:/Users/Abhinav/Downloads/roi/data anlysis of crimes in india/rajanand-crime-in-india/21_Offenders_known_to_the_victim.csv")
str(q)
n=gather(q,relation,total,No_of_Cases_in_which_offenders_were_known_to_the_Victims:No_of_Cases_in_which_offenders_were_Relatives)
View(n)
x=n%>%group_by(relation)%>%summarise(a=sum(total))
View(x)
str(j1)
##3
j1=read.csv("C:/Users/Abhinav/Downloads/roi/data anlysis of crimes in india/rajanand-crime-in-india/18_01_Juveniles_arrested_Education.csv")
j2=read.csv("C:/Users/Abhinav/Downloads/roi/data anlysis of crimes in india/rajanand-crime-in-india/18_02_Juveniles_arrested_Economic_setup.csv")
j3=read.csv("C:/Users/Abhinav/Downloads/roi/data anlysis of crimes in india/rajanand-crime-in-india/18_03_Juveniles_arrested_Family_background.csv")
View(j1)
View(j2)
View(j3)

edu_l1=gather(j1,type = Education_Above_Primary_but_below_Matric_or_Higher_Secondary:Education_Upto_primary)
View(edu_l1)
edu=edu_l1%>%group_by(key)%>%summarise(x=sum(value))
View(edu)



edu_l2=gather(j2,type=Economic_Set_up_Annual_Income_250001_to_50000:Economic_Set_up_Upper_middle_income_from_200001_to_300000)
View(edu_l2)
eco=edu_l2%>%group_by(key)%>%summarise(x=sum(value))
View(eco)


edu_l3=gather(j3,type=Family_back_ground_Homeless:Family_back_ground_Total)
View(edu_l3)
back=edu_l3%>%group_by(key)%>%summarise(x=sum(value))
View(back)


##4
a1=read.csv("C:/Users/Abhinav/Downloads/roi/data anlysis of crimes in india/rajanand-crime-in-india/42_Cases_under_crime_against_women.csv")
a2=read.csv("C:/Users/Abhinav/Downloads/roi/data anlysis of crimes in india/rajanand-crime-in-india/03_District_wise_crimes_committed_against_children_2001_2012.csv")
a3=read.csv("C:/Users/Abhinav/Downloads/roi/data anlysis of crimes in india/rajanand-crime-in-india/03_District_wise_crimes_committed_against_children_2013.csv")
View(a1)
View(a2)
View(a3)

women=a1%>%group_by(ï..Area_Name)%>%summarise(w=sum(Cases_Acquitted_or_Discharged))
View(women)
