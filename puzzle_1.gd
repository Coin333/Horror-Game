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
	

func _process(delta):
	if (player_in_area == true && Input.is_action_just_pressed("space")):
		get_tree().change_scene_to_file("res://keypad.tscn")


func _on_area_2d_body_entered(body: Node2D) -> void:
		if body is Player:
			player_in_area = true


func _on_area_2d_body_exited(body: Node2D) -> void:
		if body is Player:
			player_in_area = false
