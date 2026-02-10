# Game of Life Core

extends Node2D

var grid_size = Vector2(30, 30)
var cell_size = 16
var grid = []

func _ready():
    initialize_grid()
    draw_grid()

func initialize_grid():
    grid.resize(grid_size.x)
    for i in range(grid_size.x):
        grid[i] = []
        grid[i].resize(grid_size.y)
        for j in range(grid_size.y):
            grid[i][j] = randi() % 2  # Randomly set cells alive or dead

func draw_grid():
    for i in range(grid_size.x):
        for j in range(grid_size.y):
            var cell_color = (grid[i][j] == 1) ? Color(1, 1, 1) : Color(0, 0, 0)
            draw_rect(Rect2(i * cell_size, j * cell_size, cell_size, cell_size), cell_color)

