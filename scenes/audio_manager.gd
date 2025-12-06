extends Node

@onready var player: AudioStreamPlayer = $AudioStreamPlayer



func play_sound(sound: AudioStream):
	player.stream = sound
	player.play()
