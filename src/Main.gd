extends Node

export (PackedScene) var Shell
export (PackedScene) var HUD

# Called when the node enters the scene tree for the first time.
func _ready():
    var hud = HUD.instance()
    add_child(hud)
    randomize()

func _input(event):
    if event is InputEventMouseButton:
        _on_Shell_born(event.position)

func _on_Shell_born(pos: Vector2):
    var shell = Shell.instance()
    shell.position = pos
    add_child(shell)
