extends Node2D

onready var sprite = $Sprite

func _ready():
	if(get_tree().is_network_server()):
		set_network_master(get_tree().get_network_unique_id())

remote func updatePos(pos):
	sprite.position = pos

func _process(delta):
	var newPos = Vector2(0,0)
	if (Input.is_key_pressed(KEY_W)):
		newPos.y += 1

	sprite.position += newPos
	rpc("updatePos", sprite.position)