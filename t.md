Getting and Cleaning Data Course Project Codebook
========================================


## Study design
The original Human Activity Recognition database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The complete original data is here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 




## Variables
The original set consists of 561 features, as described [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

The features were normalized and bounded within [-1,1]

From the original set of 561 variables I kept only the ones that are mean and standard deviation of the raw measurements of the sensors. They represent raw signals from the accelerometer and the gyroscope. The tidy set kept averages of these features aggregated for each person and each activity. The names were changed to a more user-friendly format, removing any paranthesis and dashes, and using camelCase to enhance readability.



## CodeBook

* person
 *1..30
*activity
 *Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying
*timeBodyAccelerationMeanX
*timeBodyAccelerationMeanY
*timeBodyAccelerationMeanZ
*timeBodyAccelerationStandardDeviationX
*timeBodyAccelerationStandardDeviationY
*timeBodyAccelerationStandardDeviationZ
*timeGravityAccelerationMeanX
*timeGravityAccelerationMeanY
*timeGravityAccelerationMeanZ
*timeGravityAccelerationStandardDeviationX
*timeGravityAccelerationStandardDeviationY
*timeGravityAccelerationStandardDeviationZ
*timeBodyAccelerationJerkMeanX
*timeBodyAccelerationJerkMeanY
*timeBodyAccelerationJerkMeanZ
*timeBodyAccelerationJerkStandardDeviationX
*timeBodyAccelerationJerkStandardDeviationY
*timeBodyAccelerationJerkStandardDeviationZ
*timeBodyGyroscopeMeanX
*timeBodyGyroscopeMeanY
*timeBodyGyroscopeMeanZ
*timeBodyGyroscopeStandardDeviationX
*timeBodyGyroscopeStandardDeviationY
*timeBodyGyroscopeStandardDeviationZ
*timeBodyGyroscopeJerkMeanX
*timeBodyGyroscopeJerkMeanY
*timeBodyGyroscopeJerkMeanZ
*timeBodyGyroscopeJerkStandardDeviationX
*timeBodyGyroscopeJerkStandardDeviationY
*timeBodyGyroscopeJerkStandardDeviationZ
*timeBodyAccelerationMagnitudeMean
*timeBodyAccelerationMagnitudeStandardDeviation
*timeGravityAccelerationMagnitudeMean
*timeGravityAccelerationMagnitudeStandardDeviation
*timeBodyAccelerationJerkMagnitudeMean
*timeBodyAccelerationJerkMagnitudeStandardDeviation
*timeBodyGyroscopeMagnitudeMean
*timeBodyGyroscopeMagnitudeStandardDeviation
*timeBodyGyroscopeJerkMagnitudeMean
*timeBodyGyroscopeJerkMagnitudeStandardDeviation



## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones/">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>. Its purpose is to produce a tidy data subsetset from the original data.

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">Human Activity Recognition Using Smartphones Data Set </a> [62Mb]

* <b>Abstract</b>: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

* <b>Description</b>: From the original data set, only measurements on the mean and standard deviation were kept. A new data set is created containing means of those measurements.

* <b>Names</b>: Original feature names were replaced with a more user-friendly version. From the original data set, only measurements on the mean and standard deviation were kept. A new data set is created containing means of those measurements.


## Loading the data

The original folder name "UCI HAR Dataset" is supposed to be present in the working directory. If not, then the archive is looked for, and if found it is unzipped. If not found, it is downloaded from the original location and unzipped.





clean some , a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data





When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. First
calculate a rough estimate of how much memory the dataset will require
in memory before reading into R. Make sure your computer has enough
memory (most modern computers should be fine).

* We will only be using data from the dates 2007-02-01 and
2007-02-02. One alternative is to read the data from just those dates
rather than reading in the entire dataset and subsetting to those
dates.

* You may find it useful to convert the Date and Time variables to
Date/Time classes in R using the `strptime()` and `as.Date()`
functions.

* Note that in this dataset missing values are coded as `?`.


## Making Plots

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. Your task is to
reconstruct the following plots below, all of which were constructed
using the base plotting system.

First you will need to fork and clone the following GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)


For each plot you should

* Construct the plot and save it to a PNG file with a width of 480
pixels and a height of 480 pixels.

* Name each of the plot files as `plot1.png`, `plot2.png`, etc.

* Create a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot. Your code file **should include code for reading
the data** so that the plot can be fully reproduced. You should also
include the code that creates the PNG file.

* Add the PNG file and R code file to your git repository

When you are finished with the assignment, push your git repository to
GitHub so that the GitHub version of your repository is up to
date. There should be four PNG files and four R code files.


The four plots that you will need to construct are shown below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 
