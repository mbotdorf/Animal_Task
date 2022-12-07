install.packages("tidyverse")
install.packages("readxl")
install.packages("xlsx")
library(tidyverse)
library(readxl)
library(xlsx)

#######################use the following lines of code for A#################################
recall.template.A<-read_excel("/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_TEMPLATE.xlsx")

head(recall.template.A)
#View(recall.template.A)

recall.1<-(subset(recall.template.A,CuriosityRating ==1, 
                select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                           habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                           food1, food2, food3, food_category, food_correct)))

recall.1 <- as.data.frame(recall.1)

recall.2<-(subset(recall.template.A,CuriosityRating ==2, 
                  select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                             habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                             food1, food2, food3, food_category, food_correct)))

recall.2 <- as.data.frame(recall.2)


recall.3<-(subset(recall.template.A,CuriosityRating ==3, 
                  select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                             habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                             food1, food2, food3, food_category, food_correct)))

recall.3 <- as.data.frame(recall.3)

#write.xlsx(recall.template, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_TEMPLATE_SUBJECTID.xlsx', row.names = FALSE)
write.xlsx(recall.1, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_1.xlsx', row.names = FALSE)
write.xlsx(recall.2, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_2.xlsx', row.names = FALSE)
write.xlsx(recall.3, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_3.xlsx', row.names = FALSE)

######################use the following lines of code for B #################################
#use the following lines of code for B
recall.template.B<-read_excel("/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_B_TEMPLATE.xlsx")

recall.1<-(subset(recall.template.B,CuriosityRating ==1, 
                  select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                             habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                             food1, food2, food3, food_category, food_correct)))

recall.1 <- as.data.frame(recall.1)

recall.2<-(subset(recall.template.B,CuriosityRating ==2, 
                  select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                             habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                             food1, food2, food3, food_category, food_correct)))

recall.2 <- as.data.frame(recall.2)


recall.3<-(subset(recall.template.B,CuriosityRating ==3, 
                  select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                             habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                             food1, food2, food3, food_category, food_correct)))

recall.3 <- as.data.frame(recall.3)

write.xlsx(recall.template, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_B_TEMPLATE_SUBJECTID.xlsx', row.names = FALSE)
write.xlsx(recall.1, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_B_1.xlsx', row.names = FALSE)
write.xlsx(recall.2, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_B_2.xlsx', row.names = FALSE)
write.xlsx(recall.3, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_B_3.xlsx', row.names = FALSE)



######################use the following lines of code for C #################################
recall.template.C<-read_excel("/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_C_TEMPLATE.xlsx")

recall.1<-(subset(recall.template.C,CuriosityRating ==1, 
                  select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                             habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                             food1, food2, food3, food_category, food_correct)))

recall.1 <- as.data.frame(recall.1)

recall.2<-(subset(recall.template.C,CuriosityRating ==2, 
                  select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                             habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                             food1, food2, food3, food_category, food_correct)))

recall.2 <- as.data.frame(recall.2)


recall.3<-(subset(recall.template.C,CuriosityRating ==3, 
                  select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                             habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                             food1, food2, food3, food_category, food_correct)))

recall.3 <- as.data.frame(recall.3)

write.xlsx(recall.template, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_C_TEMPLATE_SUBJECTID.xlsx', row.names = FALSE)
write.xlsx(recall.1, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_C_1.xlsx', row.names = FALSE)
write.xlsx(recall.2, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_C_2.xlsx', row.names = FALSE)
write.xlsx(recall.3, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_C_3.xlsx', row.names = FALSE)











###################################DON'T NEED TO RUN BELOW CODE#####################################################
#concatenate columns
sorting<-read.csv("/Users/morganbotdorf/Dropbox/!Science Learning/010_CuriositySortingPhase_B_2022_May_18_1819.csv")

# stacking the first through third columns and then binding rest
sorting = sorting[-c(1:4),]
sorting_stacked <- cbind(stack(sorting[1:3]), sorting[4:91])
View(sorting_stacked)
print(data_mod)