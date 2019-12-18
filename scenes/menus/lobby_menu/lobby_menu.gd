extends Control

onready var chat = get_node("chat/chatWindow")
onready var mutliplayer = get_tree().multiplayer

func _ready():
	if(global.isServer):
		get_node("player1/Panel/Label").text = global.playerName

remotesync func updateChat(string):
	chat.text += string + "\n"

func sendButtonPressed():
	var messageBox = get_node("chat/messageBox")
	rpc("updateChat", messageBox.text)
	messageBox.text = ""