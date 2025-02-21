extends CharacterBody2D


var solved = 0
@onready var sprite_2d = $Sprite2D1

func puzzle(delta):
	# Add the gravity.
	if (solved == 0):
		$Sprite2D1.play("Default")
		
	else:
		$Sprite2D1.play("Done")
	
