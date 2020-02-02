extends Timer

signal tick
var time
var flg = false

func _ready():
    pass

func _process(delta):
    if flg == true:
        time = get_time_left() * delta * 60
        emit_signal("tick", time)
    pass

func _on_HUD_gamestart():
    flg = true
    pass
