from turtle import Turtle, Screen
import random

timmy = Turtle()

timmy.shape('turtle')
timmy.fillcolor("pale violet red")
timmy.pensize(5)

color_pool=["aquamarine", "medium aquamarine", "medium sea green", "dark cyan", "teal", "dark slate gray"]

def draw_shapes(number_of_sides):
    angle=360/number_of_sides
    for i in range(number_of_sides):
        
        timmy.fd(100)
        timmy.rt(angle)
    timmy.seth(0)


def call_draw_shapes():
    for i in range (3, 9):
        timmy.pencolor(color_pool[i-3])
        draw_shapes(i)
# call_draw_shapes()

def random_draw():
    timmy.pensize(10)
    timmy.speed(10)
    angles=[0, 90, 180, 360]
    for i in range(100):
        timmy.pencolor(random.choice(color_pool))
        timmy.fd(round(30))
        timmy.seth(random.choice(angles))

random_draw()


my_screen = Screen()
my_screen.exitonclick()





