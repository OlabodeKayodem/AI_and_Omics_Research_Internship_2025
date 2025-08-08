#Kayode Micheal Olabode Assignment

# Inside the project directory, create the following sub folders using R code:
# raw_data, clean_data, scripts, results or Tasks, plots etc

dir.create("raw_data")
dir.create("Clean_data")
dir.create("scripts")
dir.create("results")

#Loading the data set
patient_info <- read.csv("C:Users/USER/Downloads/Learnings/AI Biotechnology/AI_Omics_Internship_2025/Module_I/raw_data/patient_info.csv")


# Inspect the structure of the dataset using appropriate R functions

View(patient_info)
str(patient_info)

# Create a new variable for smoking status as a binary factor
Patient_info$gender <- as.factor(Patient_info$gender)
Patient_info$diagnosis <- as.factor(Patient_info$diagnosis)
Patient_info$smoker <- as.factor(Patient_info$smoker)
str(patient_info)

# Create a new variable for smoking status as a binary factor
# 1 for "Yes", 0 for "No"
patient_info$smoking_status <- ifelse(patient_info$smoker == "Yes", 1, 0)
patient_info$smoking_status <- as.factor(patient_info$smoking_status)
str(patient_info)

#Save the cleaned dataset in your clean_data folder with the name patient_info_clean.csv
write.csv(patient_info, file = "C:/Users/USER/Downloads/Learnings/AI Biotechnology/AI_Omics_Internship_2025/Module_I/Clean_data/patient_info_clean.csv", row.names = FALSE)
