extends Node2D

var speed = 50
var Player_chase = false
var player = null

func _physics_process(delta):
	if Player_chase:
		position += (player.position - position)/speed
		
		$AnimatedSprite2D.play("movingV")
		if(player.position.x - position.x) < 0:
			$AnimatedSprite2D.flip_h = true
		else:
			$AnimatedSprite2D.flip_h = false
	else:
		$AnimatedSprite2D.play("idle")

func _on_detection_area_2d_body_entered(body: Node2D):
	player = body
	Player_chase = true


func _on_detection_area_2d_body_exited(body: Node2D):
	player = body
	Player_chase = false
