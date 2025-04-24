extends Node2D

@onready var label = $PanelContainer/Label
@onready var timer = $Timer

var full_text = "Hey there! I'm an animated speech bubble."
var current_index = 0
var typing_speed = 0.05 # seconds between each character
var message = 1

func _ready():
	label.text = ""
	timer.wait_time = 2.0 # Wait 2 seconds before starting text animation
	timer.start()

func _on_timer_timeout():
	# Start typing animation
	current_index = 0
	label.text = ""
	# Use a repeating timer to animate typing
	timer.disconnect("timeout", _on_timer_timeout) # Disconnect original wait
	timer.wait_time = typing_speed
	timer.connect("timeout", _on_typing_timeout)
	timer.start()

func _on_typing_timeout():
	if current_index < full_text.length():
		label.text += full_text[current_index]
		current_index += 1
		timer.start()
	else:
		timer.stop()
		timer.disconnect("timeout", _on_typing_timeout)
		timer.wait_time = 3
		timer.connect("timeout", _on_timer_timeout)
		message += 1
		timer.start()
