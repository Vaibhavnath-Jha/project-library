import os, time
import pyautogui as pyg
import quadrilateral as fig1
import circle as fig2


def screen_setup():
    """Summary: Toggles full screen
    """
    pyg.hotkey('alt', 'space', 'x')
    time.sleep(1)


def draw_fig(theta = 2, n = 231.5, m = 152, circle=True, quad=True):
    """Summary: Returns Concentric circles and sqaures drawn in MS Paint
    
    Args:
        theta (int, optional): Specify the angle at which the figure will be drawn
        n (float, optional): x coordinate of pixel from where the square will be drawn
        m (int, optional): y coordinate of pixel from where the square will be drawn
        circle (bool, optional): allows user to toggle if they want circles or not
        quad (bool, optional): allows user to toggle if they want quadrilaterals or not
    """
    i = 1
    try:
        while i > 0:
            os.startfile('C:\\Windows\\system32\\mspaint.exe')
            time.sleep(5)
            screen_setup()
            if quad and circle:
            	fig1.draw_quad(n,m)
            	fig2.draw_circle(theta)
            elif quad:
            	fig1.draw_quad(n,m)
            elif circle:
            	fig2.draw_circle(theta)
            i = i - 1

    except KeyboardInterrupt:
        print('Done!')


if __name__ == '__main__':
    start = time.time()
    if input("Do you want both figures drawn?(Y/N): ").upper() == "Y":
    	draw_fig()
    elif int(input("\nWhich figure you want to draw?\n1.Circles,\n2.Sqaures: ")) == 1:
    	draw_fig(quad=False)
    else:
    	draw_fig(circle=False)
    stop = time.time()
    elapsed_time = (stop - start)/60
    print("Total time taken(in mins.): {}".format(round(elapsed_time,1)))
