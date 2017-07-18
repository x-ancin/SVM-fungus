#This function measures fungal coverage area in Petri dishes. See the README file in this folder
#For further details, or read the paper titled
#"Automated image analysis tool to measure microbial growth on solid cultures" (Ancin-Murguzur et al. 2017)


#####################################################################
##########    START SCRIPT     ######################################
#####################################################################



setwd("") #Set the working directory to the location where the .rda file is stored.Alternatively, you can also
          #click on "Session"-> "Set working directory" -> "Choose directory" to select the folder.

load("Petri dish area coverage prediction model.rda") #Load the model and the predicting function

predictarea(folder="C:/Users/User1/Desktop/Images",plotsave="C:/Users/User1/Desktop/ResultImages",
            tablesave="C:/Users/User1/Desktop/Result table") #Predict the coverage area


#Arguments:

#Folder: the folder where the images are stored. We recommend to use 750x500 pixel images for computing efficiency
      #This folder can ONLY contain the images. If there are any other file formats in the folder, 
      #The function will retrieve an error 

#Plotsave: the folder where the measured images can be saved for quality control

#Tablesave: the folder where the .csv file will be saved








