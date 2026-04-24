import pandas as pd
from sklearn.datasets import make_blobs


def dataset(samplesize, std):
    X, y = make_blobs(n_samples=samplesize, centers=2, n_features=2, random_state=0, cluster_std=std)
    random_data = pd.DataFrame(X)
    random_data.columns = ['X', 'Y']
    random_data['target_col'] = pd.DataFrame(y)
    return random_data
