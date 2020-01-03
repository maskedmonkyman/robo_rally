extends Node

var playerName = ""
var otherPlayers = {}

func _ready():
	pass
	
remote func registerPlayer(info):
	var id = get_tree().get_rpc_sender_id()
	otherPlayers[id] = info