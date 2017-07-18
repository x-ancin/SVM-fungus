# SVM-fungus
Model and script to measure fungus in Petri dishes based on images

This model was developed based on Support Vector Machines (SVM) to measure fungal area coverage in Petri dishes. 

More details can be found in the paper “Automated image analysis tool to measure microbial growth on solid cultures” (Ancin-Murguzur et al. 2017)

This folder contains three files: an R script to be opened in R studio (optimized for version 1.0.136 and R 3.3.2), a .rda file that is opened by the script and a test image to run the script.

We recommend to resize images to 750x500 pixels (or a similar size) to optimize computer usage. Large image sizes can lead to errors due to RAM memory overload, and yield the error message “Error: cannot allocate vector of size XX mb”, where XX is the remaining needed RAM memory to perform the calculations. 

The formula (named “predictarea”) automatically loads the needed libraries. If they are not installed, it automatically installs them. 

“Predictarea” contains three arguments that need to be fulfilled: 

-	folder: the folder containing the images to be measured. This folder can ONLY contain image files. At the moment only JPEG, PNG and BMP formats are supported

-	plotsave: the destination folder where the analyzed images are stored. The script does not create new folders

-	tablesave: the destination folder where the comma separated value (.csv) file, containing the image name, area and percentage area is saved. The percentage area column is meant to allow for different areas to the default (based on a 90mm Petri dish)

In addition to the result images and the CSV file, the script creates an object called “resulttable” in the R global environment for further use without loading the CSV file.

Example of how to use the function: 

predictarea(folder="C:/Users/User1/Desktop/Images",plotsave="C:/Users/User1/Desktop/ResultImages",tablesave="C:/Users/User1/Desktop/Result table")
