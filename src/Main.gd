extends Node

export (PackedScene) var Shell

# Called when the node enters the scene tree for the first time.
func _ready():
    randomize()

func _input(event):
    if event is InputEventMouseButton:
        _on_Shell_born(event.position)

func _on_Shell_born(pos: Vector2):
    var shell = Shell.instance()
    shell.position = pos
    add_child(shell)
