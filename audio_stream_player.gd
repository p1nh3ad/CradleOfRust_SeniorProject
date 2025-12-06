extends Node

@onready var audio_player: AudioStreamPlayer = $AudioStreamPlayer

func _ready():
	pass

func play_sound(sound: AudioStream):
	audio_player.stream = sound
	audio_player.play()
