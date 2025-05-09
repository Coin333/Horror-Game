extends Camera2D

var shake_amount := 0.0
var shake_duration := 0.0
var shake_timer := 0.0
var original_offset := Vector2.ZERO

func _ready():
	original_offset = offset

func _process(delta):
	if shake_timer > 0:
		shake_timer -= delta
		offset = original_offset + Vector2(
			randf_range(-shake_amount, shake_amount),
			randf_range(-shake_amount, shake_amount)
		)
		if shake_timer <= 0:
			offset = original_offset

func start_shake(amount: float, duration: float):
	shake_amount = amount
	shake_duration = duration
	shake_timer = duration
