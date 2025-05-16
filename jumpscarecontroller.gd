extends CanvasLayer
signal died
@onready var scare_image = $ScareImage
@onready var scream_sound = $ScreamSound
@onready var hide_timer = $HideTimer
@onready var Jumpscare = $Jumpscare

func _ready():
	scare_image.visible = false
	# Call this function to trigger the jumpscare
func trigger_jumpscare(): 
	scare_image.visible = true
	scream_sound.play()
	hide_timer.start(1.5)  # Hide after 1.5 seconds# Hide image after 1.5 seconds

func _on_hide_timer_timeout():
	scare_image.visible = false


func _on_jumpscare_ohio():
	trigger_jumpscare() # Replace with function body.
