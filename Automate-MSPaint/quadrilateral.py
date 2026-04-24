import time
import pyautogui as pyg

def draw_quad(n,m):
	pyg.click(n,m)
	distance_x = 608
	distance_y = 608
	while distance_x > 0 and distance_y > 0:
		pyg.dragRel(distance_x, 0, duration=0.1) # move right
		distance_x = distance_x - 5
		distance_y = distance_y - 5
		pyg.dragRel(0, distance_y, duration=0.1) # move down
		pyg.dragRel(-distance_x, 0, duration=0.1) #move left
		distance_y = distance_y - 5
		distance_x = distance_x - 5
		pyg.dragRel(0, -distance_y, duration=0.1) #move up
