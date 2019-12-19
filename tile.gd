extends Node

var walls = []; # up, right, down, left
var numLasers : int = 0

enum floorTypes {
	Floor
	Pit
	SingleWrench
	DoubleWrench
	Conveyor
}

var checkPointVal = -1;  # -1 for not a checkpoint, 0 for spawn, else checkpoint number 

var floorType = floorTypes.Floor;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func boardAction():
	pass # Will contain conveyor belt movement and 

func movedOnto(direction : int, moveType : bool):
	pass