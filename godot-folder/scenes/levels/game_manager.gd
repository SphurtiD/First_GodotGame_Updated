extends Node

@onready var label: Label = %Label
@export var hearts: Array[Node]

var points = 0
var lives = 3

func decrease_health():
	lives -= 1
	print(lives)
	for h in 3:
		if (h < lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	if (lives == 0):
		get_tree().reload_current_scene()

func add_points():
	points += 1
	print(points)
	label.text = "Points: " + str(points)
