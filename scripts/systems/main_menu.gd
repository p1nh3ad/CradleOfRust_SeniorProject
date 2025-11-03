extends Control

func _ready():
	# s button signals
	$VBoxContainer/StartButton.pressed.connect(_press_start)
	$VBoxContainer/OptionsButton.pressed.connect(_press_options)
	$VBoxContainer/ExitButton.pressed.connect(_press_exit)

# Start button pressed
func _press_start():
	# Load game scene
	var game_scene = preload("res://scenes/TestLevel.tscn")
	get_tree().change_scene_to_packed(game_scene)

# Opttions button pressed
func _press_options():
	# Load options scene
	var options_scene = preload("res://scripts/systems/optionsscene.tscn")
	get_tree().change_scene_to_packed(options_scene)

# Exit button pressed
func _press_exit():
	get_tree().quit()
	pass
