# Codebook (Getting and Cleaning Data Course Project)

## Introduction
This document represents codebook for the Coursera  John's Hopkins University Course  "Getting and Cleaning Data" Project, describind the data, and all the decissions that have been made to choose variables, rename them properly and process the data.

## Background
Data corresponds to collected data from an experiment carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone Samsung on the waist. Different data has been captured from the smartphone sensors.
The dataset is partitioned into two sets called training data and test data.
It is assumed that the compressed datafile `getdata_projectfiles_UCI HAR Dataset.zip` is already in the working directory. The R sript will care of the decompression and organization of files. For the shake of clarity the script will put the data in the data directory. This directory will be created if not exists. It also will be rewritten if files already exists.

## The Data

Once decompressed the data is split accross different files and directories. The files used in the project are:

* 'data/features_info.txt': Shows information about the variables used on the feature vector.
* 'data/features.txt': List of all features.
* 'data/activity_labels.txt': Links the class labels with their activity name.
* 'data/train/X_train.txt': Training set.
* 'data/train/y_train.txt': Training labels.
* 'data/train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to * 'data/test/X_test.txt': Test set.
* 'data/test/y_test.txt': Test labels.
* 'data/test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 

## Selection of variables

Only mean and std variables have been considered: from a total of 561 variables, only 79 have been retained. All variables with "mean" or "std()" in their name have been retained (including the ones called that included "meanFreq"" in the original data).

Two variables representing the subject and the activity have been added to the final data set.

## Variable name translation

The features names have been changed to follow good tidy data practices. In particular they have been converted to lower case, and removed underscores and parenthesis.

Each feature name is composed of several parts that denote different aspect of the measure as follows:
* f         denoting frequency domain 
* t         denoting time domain
* body      measure in relation to a subject body
* gravity   measure in realtion to gravity force
* acc       acceleration
* gyro      angular velocity
* jerk      rate of change
* mag       magnitude
* mean      mean
* meanfreq  mean frequency
* std       standard deviation
* x         x-coordinate
* y         y-coordinate
* z         z-coordinate

## List of variables

With the previous specified meaning of each part of the name, the resulting variable names are:

* subject                     
* activity                    
* tbodyaccmeanx               
* tbodyaccmeany               
* tbodyaccmeanz               
* tbodyaccstdx                
* tbodyaccstdy                
* tbodyaccstdz                
* tgravityaccmeanx            
* tgravityaccmeany            
* tgravityaccmeanz            
* tgravityaccstdx             
* tgravityaccstdy             
* tgravityaccstdz             
* tbodyaccjerkmeanx           
* tbodyaccjerkmeany           
* tbodyaccjerkmeanz           
* tbodyaccjerkstdx            
* tbodyaccjerkstdy            
* tbodyaccjerkstdz            
* tbodygyromeanx              
* tbodygyromeany              
* tbodygyromeanz              
* tbodygyrostdx               
* tbodygyrostdy               
* tbodygyrostdz               
* tbodygyrojerkmeanx          
* tbodygyrojerkmeany          
* tbodygyrojerkmeanz          
* tbodygyrojerkstdx           
* tbodygyrojerkstdy           
* tbodygyrojerkstdz           
* tbodyaccmagmean             
* tbodyaccmagstd              
* tgravityaccmagmean          
* tgravityaccmagstd           
* tbodyaccjerkmagmean         
* tbodyaccjerkmagstd          
* tbodygyromagmean            
* tbodygyromagstd             
* tbodygyrojerkmagmean        
* tbodygyrojerkmagstd         
* fbodyaccmeanx               
* fbodyaccmeany               
* fbodyaccmeanz               
* fbodyaccstdx                
* fbodyaccstdy                
* fbodyaccstdz                
* fbodyaccmeanfreqx           
* fbodyaccmeanfreqy           
* fbodyaccmeanfreqz           
* fbodyaccjerkmeanx           
* fbodyaccjerkmeany           
* fbodyaccjerkmeanz           
* fbodyaccjerkstdx            
* fbodyaccjerkstdy            
* fbodyaccjerkstdz            
* fbodyaccjerkmeanfreqx       
* fbodyaccjerkmeanfreqy       
* fbodyaccjerkmeanfreqz       
* fbodygyromeanx              
* fbodygyromeany              
* fbodygyromeanz              
* fbodygyrostdx               
* fbodygyrostdy               
* fbodygyrostdz               
* fbodygyromeanfreqx          
* fbodygyromeanfreqy          
* fbodygyromeanfreqz          
* fbodyaccmagmean             
* fbodyaccmagstd              
* fbodyaccmagmeanfreq         
* fbodybodyaccjerkmagmean     
* fbodybodyaccjerkmagstd      
* fbodybodyaccjerkmagmeanfreq 
* fbodybodygyromagmean        
* fbodybodygyromagstd         
* fbodybodygyromagmeanfreq    
* fbodybodygyrojerkmagmean    
* fbodybodygyrojerkmagstd     
* fbodybodygyrojerkmagmeanfreq

## Transformations: from raw to tidy

1 Training and test datasets have been merged in one unique dataset
2 The variable names of the dataset have been changed according to the names provided in the file features.txt
3 The variable names have been changed to lowercase, dash and parenthesis have been removed
4 Only the columns with "mean" or "std()" in their name have been selected (79 variables)
5 Two new columns have been added for subject and activity
6 Activity values have been replaced by their name from the activity_lables.txt file
7 The resulting dataset has been processed as requested computing the mean for all the variables grouping by subject and activity obtaining a dataset of 180 observations of 81 variables (subject, activity and the 79 means)
8 The tidy data has been written in a text file with comma delimiter and no row names





