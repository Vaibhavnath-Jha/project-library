import pandas as pd
from sklearn.datasets import make_blobs

X, y = make_blobs(n_samples=500, centers=2, n_features=2, random_state=0, cluster_std=0.1)
random_data = pd.DataFrame(X)
random_data.columns = ['X','Y']
