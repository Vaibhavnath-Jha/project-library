import math
import time
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from Data_generator import random_data

graph_count = 0
no_of_clusters = 3
x_coordinate = np.asarray([0, 0, 0]).astype(float)
y_coordinate = np.asarray([2, 3, 4]).astype(float)
initial_point = list(zip(x_coordinate, y_coordinate))
data = random_data
all_initial_points = [initial_point]
# optimized_list = []


def calculate_distance():
    distance_list = [[] for _ in range(no_of_clusters)]
    for point in range(len(initial_point)):
        for row in range(len(data)):
            distance = math.sqrt(sum((initial_point[point] - data.iloc[row]) ** 2))
            for i in range(no_of_clusters):
                if i == point:
                    distance_list[i].append(distance)
    return distance_list


def generate_cluster():
    c1, c2, c3 = [], [], []
    cluster_1, cluster_2, cluster_3 = pd.DataFrame(), pd.DataFrame(), pd.DataFrame()
    result = calculate_distance()
    index = 0
    for i, j, k in zip(result[0], result[1], result[2]):
        if min(i, j, k) == i:
            c1.append(data.iloc[index])
        elif min(i, j, k) == j:
            c2.append(data.iloc[index])
        else:
            c3.append(data.iloc[index])
        index += 1
        cluster_1 = pd.DataFrame(c1)
        cluster_2 = pd.DataFrame(c2)
        cluster_3 = pd.DataFrame(c3)
    return cluster_1, cluster_2, cluster_3


def update_cluster_means():
    result = calculate_distance()
    clusters = generate_cluster()
    global initial_point
    #######################################
    # Code to calculate the optimizer function
    # total_sum = 0
    # for row in range(len(data)):
    #     if result[0][row] < result[1][row] and result[0][row] < result[2][row]:
    #         optimized_distance = sum((initial_point[0] - data.iloc[row]) ** 2)
    #     elif result[1][row] < result[0][row] and result[1][row] < result[2][row]:
    #         optimized_distance = sum((initial_point[1] - data.iloc[row]) ** 2)
    #     else:
    #         optimized_distance = sum((initial_point[2] - data.iloc[row]) ** 2)
    #     total_sum += optimized_distance
    # optimized_list.append(total_sum)
    #######################################
    for i in range(len(clusters)):
        x_coordinate[i] = clusters[i]['X'].mean().astype(float)
        y_coordinate[i] = clusters[i]['Y'].mean().astype(float)
    initial_point = list(zip(x_coordinate, y_coordinate))
    all_initial_points.append(initial_point)
    return initial_point


def graphy(x, y, label):
    cluster_color = ['green', 'blue', 'magenta']
    result = generate_cluster()
    plt.title(label)
    for i in range(len(result)):
        plt.scatter(result[i]['X'], result[i]['Y'], color=cluster_color[i], clip_on=False)
    plt.scatter(x, y, color='red', clip_on=False, marker="X")
    global graph_count
    filename = 'Blob ' + str(graph_count)
    plt.savefig('Plots/' + filename)
    graph_count += 1
    plt.show()


def k_means_clustering(epoch):
    for i in range(epoch):
        if i == 0:
            graphy(x_coordinate, y_coordinate, "Initial Iteration")
        else:
            graphy(x_coordinate, y_coordinate, "Iteration" + str(i))
        update_cluster_means()
        if all_initial_points[i] == all_initial_points[i + 1]:
            print("Clustering Done!")
            break


start = time.time()
k_means_clustering(30)
stop = time.time()
elapsed_time = (stop - start) / 60
print("Total time taken(mins.): ", round(elapsed_time, 1))
