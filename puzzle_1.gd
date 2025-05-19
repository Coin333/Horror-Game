extends CharacterBody2D


var solved = 0
var player_in_area = false
@onready var sprite_2d = $Sprite2D1

func _ready() -> void:
	# Add the gravity.
	if (solved == 0):
		$Sprite2D1.play("Default")
		
	else:
		$Sprite2D1.play("Done")
	
func _on_body_entered(body):
	if body.name == "Player":  # Adjust this to match your player node's name
		player_in_area = true

func _on_body_exited(body):
	if body.name == "Player":
		player_in_area = false

func _process(delta):
	if player_in_area and Input.is_action_just_pressed("space"):
		get_tree().change_scene_to_file("res://keypad.tscn")
