extends Node2D

const CHAR_READ_RATE = .05
var tween: Tween

@onready var textbox_container = $TextboxContainer
@onready var start_symbol = $TextboxContainer/MarginContainer/HBoxContainer/StartSymbol
@onready var end_symbol = $TextboxContainer/MarginContainer/HBoxContainer/EndSymbol
@onready var text = $TextboxContainer/MarginContainer/HBoxContainer/Text

func _ready():
	text.queue_text("This is the texting words")
	text.queue_text("meow meowmeow meowmeow meowmeow meowmeow meowmeow meowmeow meowmeow meow")
	text.queue_text("meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow meow ya ya ya ya poop poop poop poop then i")
	text.dialogue_empty.connect(_on_dialogue_empty)
	#hide_textbox()
	
func _on_dialogue_empty():
	self.hide()
	
func hide_textbox():
	start_symbol.text = ""
	end_symbol.text = ""
	text.text  = ""
	textbox_container.hide()
	
func show_textbox():
	start_symbol.text = "*"
	textbox_container.show()
	
#func add_text(speaker, text_array):
#	pass
