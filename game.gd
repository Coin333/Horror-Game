extends Node2D
signal died
signal back
@onready var player = $node/CharacterBody2D
@onready var enemy = $enemy_1/Hitbox
var js = 0
func _physics_process(delta):
	if player.global_position.distance_to(enemy.global_position) < 48:  # or use bounding box
		_on_player_died()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _on_player_died():
	if (js == 0):
		died.emit()
		js +=1
		
		await get_tree().create_timer(1.55).timeout
		get_tree().change_scene_to_file("res://end_screen.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	
