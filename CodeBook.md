Code Book
========================================================

This code book is valid for both the "MeansAndStandardDeviations.txt" and the "AverageMeansAndStandardDeviations.txt" output.

The data come from the accelerometer and gyroscope to produce time domain signals (prefix 't' to denote time) and were  captured at a constant rate of 50 Hz. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-mean()-XYZ abd tBodyAcc-std()-XYZ and tGravityAcc-mean()-XYZ and tGravityAcc-std()-XYZ) using a low pass Butterworth filter with a corner frequency of 0.3 Hz.  Those columns denoted by "mean()" and the mean signals and those denoted by "std()" are the standard deviations of those measurements.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tGravityAcc-mean()-XYZ and tGravityAcc-std()-XYZ and tBodyGyroJerk-mean()-XYZ and tBodyGyroJerk-std()-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals and the means and standard deviations were taken producing fBodyAcc-mean()-XYZ, fBodyAcc-std()-XYZ, fBodyAccJerk-mean()-XYZ, fBodyAccJerk-std()-XYZ, fBodyGyro-mean()-XYZ, fBodyGyro-std()-XYZ, fBodyAccJerkMag-mean(), fBodyAccJerkMag-std(), fBodyGyroMag-mean(), fBodyGyroMag-std(), fBodyGyroJerkMag-mean(), and fBodyGyroJerkMag-std(). (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The Subject column denotes which of the 30 volunteers within an age bracket of 19-48 years is performing the activity.

The Activity denotes the physical activity the subject is performing.

The 81 columns are given below:

1. Activity
2. Subject
3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. tBodyAcc-mean()-Z
6. tBodyAcc-std()-X
7. tBodyAcc-std()-Y
8. tBodyAcc-std()-Z               
9. tGravityAcc-mean()-X           
10. tGravityAcc-mean()-Y           
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X            
13. tGravityAcc-std()-Y            
14. tGravityAcc-std()-Z            
15. tBodyAccJerk-mean()-X          
16. tBodyAccJerk-mean()-Y          
17. tBodyAccJerk-mean()-Z          
18. tBodyAccJerk-std()-X           
19. tBodyAccJerk-std()-Y           
20. tBodyAccJerk-std()-Z           
21. tBodyGyro-mean()-X             
22. tBodyGyro-mean()-Y             
23. tBodyGyro-mean()-Z             
24. tBodyGyro-std()-X              
25. tBodyGyro-std()-Y              
26. tBodyGyro-std()-Z              
27. tBodyGyroJerk-mean()-X         
28. tBodyGyroJerk-mean()-Y         
29. tBodyGyroJerk-mean()-Z         
30. tBodyGyroJerk-std()-X          
31. tBodyGyroJerk-std()-Y          
32. tBodyGyroJerk-std()-Z          
33. tBodyAccMag-mean()             
34. tBodyAccMag-std()              
35. tGravityAccMag-mean()          
36. tGravityAccMag-std()           
37. tBodyAccJerkMag-mean()         
38. tBodyAccJerkMag-std()          
39. tBodyGyroMag-mean()            
40. tBodyGyroMag-std()             
41. tBodyGyroJerkMag-mean()        
42. tBodyGyroJerkMag-std()         
43. fBodyAcc-mean()-X              
44. fBodyAcc-mean()-Y              
45. fBodyAcc-mean()-Z              
46. fBodyAcc-std()-X               
47. fBodyAcc-std()-Y               
48. fBodyAcc-std()-Z               
49. fBodyAcc-meanFreq()-X          
50. fBodyAcc-meanFreq()-Y          
51. fBodyAcc-meanFreq()-Z          
52. fBodyAccJerk-mean()-X          
53. fBodyAccJerk-mean()-Y          
54. fBodyAccJerk-mean()-Z          
55. fBodyAccJerk-std()-X           
56. fBodyAccJerk-std()-Y           
57. fBodyAccJerk-std()-Z           
58. fBodyAccJerk-meanFreq()-X      
59. fBodyAccJerk-meanFreq()-Y      
60. fBodyAccJerk-meanFreq()-Z      
61. fBodyGyro-mean()-X             
62. fBodyGyro-mean()-Y             
63. fBodyGyro-mean()-Z             
64. fBodyGyro-std()-X              
65. fBodyGyro-std()-Y              
66. fBodyGyro-std()-Z              
67. fBodyGyro-meanFreq()-X         
68. fBodyGyro-meanFreq()-Y         
69. fBodyGyro-meanFreq()-Z         
70. fBodyAccMag-mean()             
71. fBodyAccMag-std()              
72. fBodyAccMag-meanFreq()         
73. fBodyBodyAccJerkMag-mean()     
74. fBodyBodyAccJerkMag-std()      
75. fBodyBodyAccJerkMag-meanFreq() 
76. fBodyBodyGyroMag-mean()        
77. fBodyBodyGyroMag-std()         
78. fBodyBodyGyroMag-meanFreq()    
79. fBodyBodyGyroJerkMag-mean()    
80. fBodyBodyGyroJerkMag-std()     
81. fBodyBodyGyroJerkMag-meanFreq()
