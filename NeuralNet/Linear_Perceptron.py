import seaborn as sns
import numpy as np
import time
import matplotlib.pyplot as plt
from Data_generator import dataset

data = dataset(2000, 1)
bias = [1 for i in range(len(data))]
data.insert(0, "bias", bias, True)
without_target_col = np.array(data.drop("target_col", axis=1).values.tolist())
graph_count = 1


def predict(weight):  # function to predict the output based on the weights
    prediction = []
    activate = weight[0] * data["bias"] + weight[1] * data["X"] + weight[2] * data["Y"]
    for i in range(len(activate)):
        if activate[i] > 0:
            prediction.append(1)
        else:
            prediction.append(0)
    return prediction


def error(weight):  # function for calculating the error between predicted and actual outcome
    err = []
    output = predict(weight)
    for i in range(len(data)):
        err.append(data["target_col"].iloc[i] - output[i])
    return err


def accuracy(weight):  # function for accuracy calculation of th model
    err_out = error(weight)
    sample_size = len(err_out)
    error_count = 0
    for i in range(sample_size):
        if err_out[i] != 0: error_count += 1
    return (1 - (error_count / sample_size)) * 100


def visualize_perceptron(weight):  # function to draw decision boundary for the perceptron
    slope = -(weight[0] / weight[2]) / (weight[0] / weight[1])
    intercept = -weight[0] / weight[2]
    boundary_line = (slope * data["X"]) + intercept
    sns.scatterplot(x='X', y='Y', data=data, hue='target_col')
    sns.lineplot(data["X"], boundary_line, color='black')
    plt.legend(bbox_to_anchor=(1.05, 1), loc=2, borderaxespad=0)
    global graph_count
    if 1 <= graph_count <= 9:
        plt.savefig("2000Points/0" + str(graph_count), bbox_inches='tight')  # For the purpose of creating GIF easily
    else:
        plt.savefig("2000Points/" + str(graph_count), bbox_inches='tight')
    plt.show()
    graph_count += 1


def perceptron(n_epoch, l_rate=1.0):  # function to update the weights in case of constant learning rate (given as 1)
    weight = [0.0, 0.0, 0.0]
    for epoch in range(n_epoch):
        error_out = error(weight)
        add = []
        if all(err == 0 for err in error_out):
            print("No error found")
            return accuracy(weight)
        for i in range(len(error_out)):
            if error_out[i] != 0:
                add.append(error_out[i] * without_target_col[i])
        array = np.asarray(add)
        summand = np.sum(array, axis=0)
        for j in range(len(data.columns) - 1):
            weight[j] = weight[j] + (l_rate * summand[j])  # updating the weights
        visualize_perceptron(weight)
    return accuracy(weight)


start = time.time()
if __name__ == '__main__':
    result = perceptron(100, 1.2)
    print("Model Accuracy = {}% \nMisclassification Rate = {}".format(result, round(100 - result, 2)))
stop = time.time()
elapsed_time = stop - start
print("Time taken: {} secs".format(elapsed_time))
# END OF PROGRAM
