extends Control


const password = "5225"

@onready var text_edit = $VBoxContainer/MarginContainer/Label




func key_pressed(digit):
	if len(text_edit.text) < 4:
		text_edit.text += str(digit)



func _on_button_pressed() -> void:
	key_pressed(1)


func _on_button_2_pressed() -> void:
	key_pressed(2)


func _on_button_3_pressed() -> void:
	key_pressed(3)


func _on_button_4_pressed() -> void:
	key_pressed(4)


func _on_button_5_pressed() -> void:
	key_pressed(5)


func _on_button_6_pressed() -> void:
	key_pressed(6)


func _on_button_7_pressed() -> void:
	key_pressed(7)


func _on_button_8_pressed() -> void:
	key_pressed(8)


func _on_button_9_pressed() -> void:
	key_pressed(9)

func _on_button_clear_pressed() -> void:
	text_edit.text = ""


func _on_button_11_pressed() -> void:
	key_pressed(0)


func _on_button_ok_pressed() -> void:
	if text_edit.text == password:
		print("correct")

	else:
		print("wrong")
		text_edit.text =""
