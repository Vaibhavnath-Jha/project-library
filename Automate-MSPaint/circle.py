import time
import pyautogui as pyg
import math as mt
import pandas as pd
import numpy as np


x = []
y = []
radius = np.linspace(250, 25, 10)
# path = 'D:\\Projects\\PyautoGui_projects\\'
# color = {180: 'Red.png', 360: 'Blue.png', 540: 'Green.png'}


def circle(theta):
    for r in radius:
        n = 360
        while n > 0:
            rad = (n * mt.pi) / 180
            x.append(r * mt.sin(rad))
            y.append(r * mt.cos(rad))
            n = n - theta
    return pd.DataFrame({'X': x, 'Y': y}).round(0)


def draw_circle(theta):
    df = circle(theta)
    ratio = 360 / theta
    pyg.moveTo(530.5 + df['X'].iloc[0], 456 + df['Y'].iloc[0])
    for i in range(len(df)):
        if (i != 0 and i % ratio == 0) :
            # coord = pyg.center(pyg.locateOnScreen(path + color[i])) # To print circles of different color.
            # time.sleep(10)
            # pyg.doubleClick(coord[0], coord[1])
            time.sleep(5)
            pyg.moveTo(530.5 + df['X'].iloc[i], 456 + df['Y'].iloc[i])
            time.sleep(1)
        else:
            pyg.dragTo(530.5 + df['X'].iloc[i], 456 + df['Y'].iloc[i])
