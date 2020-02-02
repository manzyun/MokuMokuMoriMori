extends Node

export (PackedScene) var Shell

# Called when the node enters the scene tree for the first time.
func _ready():
    randomize()

func _on_Shell_born():
    var shell = Shell.instance()
    add_child(shell)
