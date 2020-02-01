extends Area2D

signal hit
signal born

export var per_move = 5 # 1フレームにつき移動する量
export var life_point = 2

var screen_size
var tmp_collision_body

func _ready():
    screen_size = get_viewport_rect().size
    position.x = position.x * sin(randi())
    position.y = position.y * cos(randi())
    $TimerBorn.start(3)

func _process(delta):
    var verocity = Vector2()
    verocity.x = rand_range(0, per_move)
    verocity.y = rand_range(0, per_move)
    verocity = verocity.normalized() * per_move

    position += verocity * delta
    position.x = clamp(position.x, 0, screen_size.x)
    position.y = clamp(position.y, 0, screen_size.y)


func _on_TimerBorn_timeout():
    emit_signal("born")
