extends Control

@onready var player = get_tree().get_first_node_in_group("player")

func _ready():
	#$CanvasLayer.hide()
	$CanvasLayer/Panel/HealthB.pressed.connect(on_first_button)
	$CanvasLayer/Panel/StamB.pressed.connect(on_second_button)
	$CanvasLayer/Panel/RecB.pressed.connect(on_third_button)

func on_first_button():	
	upgrade_max_health()
	
func on_second_button():
	upgrade_max_stamina()
	
func on_third_button():
	upgrade_stamina_recovery()
	
func upgrade_max_health():
	print("health")
	player.increase_max_health(50.0)

func upgrade_max_stamina():
	print("stamina")
	player.increase_max_stamina(50.0)

func upgrade_stamina_recovery():
	print("recover stamina")
	player.increase_stamina_recovery(25.0)
