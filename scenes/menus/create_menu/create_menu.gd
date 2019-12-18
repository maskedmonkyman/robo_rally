extends Control

onready var port = get_node("port/TextEdit")

func _ready():
	pass

func backButtonPressed():
	get_tree().change_scene("res://scenes/menus/main_menu/main_menu.tscn")


func createButtonPressed():
	var server = NetworkedMultiplayerENet.new()
	var error = server.create_server(int(port.text), 8)
	if(error):
		print("error: ", error)
		return
	get_tree().set_network_peer(server)
	global.isServer = true
	global.playerName = get_node("name/TextEdit").text
	get_tree().change_scene("res://scenes/menus/lobby_menu/lobby_menu.tscn")