# Kmeans-Clustering

Program to visualize K means clustering algorithm without using any data science library.

### KMeans_General.py
Main code in order to execute Kmeans_algorithm.<br/>
The algorithm can be altered to as many centers as user wants. Default=3.

#### Plots 
Contains GIF of different Example dataset

#### Data_generator.py
Code for generating random blob like data using sckit.learn


#### *note about algorithm:*<br/>
More number of datapoints, more time the algorithm will take to converge. Total time includes rendering the graphs as well. Some results are:

No. of Datapoints | Time Taken (in mins.)
------------------|-----------------------
200 | 1.2
400 | 2.7
1000 | 9.8
2000 | 26.2

*These results were obtained on a system with following configuration:*<br/>
_CPU    -> Intel Core i5 - 8285U @ 1.60GHz<br/>
Memory -> 8GB RAM<br/>
GPU    -> Nvidia Geforce MX150<br/>
VRAM   -> 2GB <br/>_
