extends Control


onready var ipInput = get_node("ipLabel/ipInput")
onready var portInput = get_node("portLabel/portInput")
onready var nameInput = get_node("nameLabel/nameInput")

func _ready():
	pass


func backButtonPressed():
	get_tree().change_scene("res://scenes/menus/main_menu/main_menu.tscn")

func joinButtonPressed():
	var peer = NetworkedMultiplayerENet.new()
	var error = peer.create_client(ipInput.text, int(portInput.text))
	if (error):
		print("error: " + error)
		return
	get_tree().set_network_peer(peer)
	peer.connect("connection_failed", self, "connectionFailed")
	peer.connect("connection_succeeded", self, "connectionSucceed")
	print("trying to join")
	
func connectionFailed():
	print("connection failed")
	
func connectionSucceed():
	get_tree().change_scene("res://scenes/menus/lobby_menu/lobby_menu.tscn")