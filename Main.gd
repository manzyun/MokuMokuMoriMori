extends Node

export (PackedScene) var Shell

# Called when the node enters the scene tree for the first time.
func _ready():
    randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_Shell_born():
    var shell = Shell.instance()
    add_child(shell)
