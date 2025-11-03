extends Control
@onready var main_menu_scene: PackedScene = preload("res://scenes/main_menu.tscn")

func _ready():
	$VBoxContainer/BackButton.pressed.connect(_press_back)

func _press_back():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
