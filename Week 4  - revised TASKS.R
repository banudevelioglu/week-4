
titanic_df <- as.data.frame(Titanic)

head(titanic_df)

install.packages("dplyr") 
library(dplyr)

survived_sex_df <- select(titanic_df, Survived, Sex)

survived_sex_df_no_sex <- select(survived_sex_df, -Sex)

survived_sex_df <- rename(survived_sex_df, Gender = Sex)

gender_df <- survived_sex_df

males_df <- filter(gender_df, Gender == "Male")

arranged_gender_df <- arrange(gender_df, Gender)

total_frequency <- sum(titanic_df$Freq)

total_frequency

females_df <- filter(gender_df, Gender == "Female")

combined_df <- bind_rows(males_df, females_df)

summary_df <- titanic_df %>%
summarise(Total_Freq = sum(Freq))

