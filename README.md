Readme (Getting and Cleaning Data Project)
========================================================

Author: Emilio Gonzalez Gonzalez
Date:   Feb 22, 2015

## Purpose
This repository is the submission for the Coursera  John's Hopkins University Course Project "Getting and Cleaning Data" .  
It contains a R script to manipulate the raw data (`analysis.R`), a Codebook explaning the variables `CodeBook.md`, and a tidy data set after manipulation by the script (`tidydata.txt`).   
The project goal is to prove the ability to collect, work with and clean a data set.

## Background
The data provided comes from the [UNI Machine learning repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
It is build from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted SAMSUNG smartphone with embedded intertial sensors.

## R  Data Manipulation
The `analysis.R` script performs all the work:
* Reads the compressed data file
* Merges the training and test data sets in one unique data set.
* Extract measures of mean and standard deviation for each measure
* Uses descriptive activity names for the activities in the data set.
* Labels the data set with descriptive variable names
* Crates a independent tidy data set with the average of each variable for each activity and each subject.
* Finally writes the tidy data set file.

Subjective procedure has been carried out to rename the measurement variables in order to present a tidy perspective (see the Codebook). These names are derived from auxiliary files provided in the data sets: `features.txt` and `features_info.txt`.

About the activity variable names, they have been extracted form `activity_labels.txt` file.

Data process has been carried out with standard R using the dplyr package, extracting then mean and standard deviation variables.

As requested data has been grouped by Subject and Activity, computing their averable and writing the output in the `tidydata.txt` file.

To 
## Codebook
The `CodeBook.md` file describes the data, explains the variables descriptive names (and why their names are descriptive),
book CodeBook.md explains the data, the variables, and the transformations that were done in order to produce the tidy dataset from the raw data.
