extends Control

onready var chat = get_node("chat/chatWindow")
onready var mutliplayer = get_tree().multiplayer

func _ready():
	if(global.isServer):
		get_node("player1/Panel/Label").text = global.playerName
	mutliplayer.connect("network_peer_packet", self, "getPacket")
	
func updateChat(string):
	chat.text += string + "\n"

func sendButtonPressed():
	var messageBox = get_node("chat/messageBox")
	get_tree().multiplayer.send_bytes(messageBox.text.to_ascii())
	updateChat(messageBox.text)
	messageBox.text = ""
	
func getPacket(id, packet):
	updateChat(packet.get_string_from_ascii())