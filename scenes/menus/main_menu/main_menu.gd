extends Control

func _ready():
	pass

func createButtonPressed():
	get_tree().change_scene("res://scenes/menus/create_menu/create_menu.tscn")


func joinButtonPressed():
	get_tree().change_scene("res://scenes/menus/join_menu/join_menu.tscn")
