extends CharacterBody2D
@onready var sprite_2d = $AnimatedSprite2D

var solved = false


func puzzle(delta):
	# Add the gravity.
	if (solved == false):
		sprite_2d.animation = "Default"
	
