extends Control

onready var chat = get_node("chat/chatWindow")
onready var mutliplayer = get_tree().multiplayer
onready var playerPannels = [ #this might be kinda ugly maybe fix it later
	get_node("player1/Panel/Label"),
	get_node("player2/Panel/Label"),
	get_node("player3/Panel/Label"),
	get_node("player4/Panel/Label"),
	get_node("player5/Panel/Label"),
	get_node("player6/Panel/Label"),
	get_node("player7/Panel/Label"),
	get_node("player8/Panel/Label")
]

func _ready():
	if(get_tree().multiplayer.is_network_server()):
		get_node("player1/Panel/Label").text = global.playerName
		$startButton.disabled = false

remotesync func updateChat(string):
	chat.text += string + "\n"

func sendButtonPressed():
	var messageBox = get_node("chat/messageBox")
	rpc("updateChat", messageBox.text)
	messageBox.text = ""

remotesync func switchToGameScene(scenePath):
	get_tree().change_scene(scenePath)
	
func startButtonPressed():
	rpc("switchToGameScene", "res://scenes/levels/test.tscn")
