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
#curiosity rating 1
recall.1.bird<-(subset(recall.template.A,CuriosityRating ==1 & category == "bird", 
                select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                           habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                           food1, food2, food3, food_category, food_correct)))

recall.1.bird <- as.data.frame(recall.1.bird)

recall.1.mammal<-(subset(recall.template.A,CuriosityRating ==1 & category == "mammal", 
                       select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                                  habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                                  food1, food2, food3, food_category, food_correct)))

recall.1.mammal <- as.data.frame(recall.1.reptile)

recall.1.reptile<-(subset(recall.template.A,CuriosityRating ==1 & category == "reptile/fish", 
                         select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                                    habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                                    food1, food2, food3, food_category, food_correct)))

recall.1.reptile <- as.data.frame(recall.1.reptile)

#curiosity rating 2

recall.2.bird<-(subset(recall.template.A,CuriosityRating ==2 & category == "bird", 
                       select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                                  habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                                  food1, food2, food3, food_category, food_correct)))

recall.2.bird <- as.data.frame(recall.2.bird)

recall.2.mammal<-(subset(recall.template.A,CuriosityRating ==2 & category == "mammal", 
                         select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                                    habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                                    food1, food2, food3, food_category, food_correct)))

recall.2.mammal <- as.data.frame(recall.2.mammal)

recall.2.reptile<-(subset(recall.template.A,CuriosityRating ==2 & category == "reptile/fish", 
                          select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                                     habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                                     food1, food2, food3, food_category, food_correct)))

recall.2.reptile <- as.data.frame(recall.2.reptile)

#curiosity rating 3

recall.3.bird<-(subset(recall.template.A,CuriosityRating ==3 & category == "bird", 
                       select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                                  habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                                  food1, food2, food3, food_category, food_correct)))

recall.3.bird <- as.data.frame(recall.3.bird)

recall.3.mammal<-(subset(recall.template.A,CuriosityRating ==3 & category == "mammal", 
                         select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                                    habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                                    food1, food2, food3, food_category, food_correct)))

recall.3.mammal <- as.data.frame(recall.3.mammal)

recall.3.reptile<-(subset(recall.template.A,CuriosityRating ==3 & category == "reptile/fish", 
                          select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                                     habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                                     food1, food2, food3, food_category, food_correct)))

recall.3.reptile <- as.data.frame(recall.3.reptile)

recall.bird<-(subset(recall.template.A,category == "bird", 
                       select = c(stimuli, CuriosityRating, category, CorrAnsHabitat, 
                                  habitat_correct, habitat, habitat2, habitat3, stimuli2, 
                                  food1, food2, food3, food_category, food_correct)))

recall.bird <- as.data.frame(recall.bird)

#write.xlsx(recall.template, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_TEMPLATE_SUBJECTID.xlsx', row.names = FALSE)
write.xlsx(recall.1.bird, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_1_bird.xlsx', row.names = FALSE)
write.xlsx(recall.1.mammal, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_1_mammal.xlsx', row.names = FALSE)
write.xlsx(recall.1.reptile, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_1_reptile.xlsx', row.names = FALSE)
write.xlsx(recall.bird, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_bird.xlsx', row.names = FALSE)

write.xlsx(recall.2.bird, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_2_bird.xlsx', row.names = FALSE)
write.xlsx(recall.2.mammal, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_2_mammal.xlsx', row.names = FALSE)
write.xlsx(recall.2.reptile, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_2_reptile.xlsx', row.names = FALSE)

write.xlsx(recall.3.bird, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_3_bird.xlsx', row.names = FALSE)
write.xlsx(recall.3.mammal, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_3_mammal.xlsx', row.names = FALSE)
write.xlsx(recall.3.reptile, '/Users/morganbotdorf/Dropbox/!Science Learning/3.recall_loop_A_3_reptile.xlsx', row.names = FALSE)

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
