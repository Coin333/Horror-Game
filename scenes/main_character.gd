extends CharacterBody2D


const SPEED = 250.0
@onready var sprite_2d = $Sprite2D


func _physics_process(delta):

	#Animations
	if (velocity.x > 1 || velocity.x < -1):
		sprite_2d.play("walk_left")
	else:
		sprite_2d.animation = "walk_down"


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED *0.5
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED*0.5)

	var directionV := Input.get_axis("up", "down")
	if directionV:
		velocity.y = directionV * SPEED*0.5
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED*0.5)
	move_and_slide()
	
	var isLeft = velocity.x > 0
	sprite_2d.flip_h = isLeft
	
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
