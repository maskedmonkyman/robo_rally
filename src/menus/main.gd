extends Control

func _ready():
	pass

func createButtonPressed():
	get_tree().change_scene("res://scenes/menus/create.tscn")


func joinButtonPressed():
	get_tree().change_scene("res://scenes/menus/join.tscn")
