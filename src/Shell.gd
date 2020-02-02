extends Area2D

export var per_move = 20 # 1フレームにつき移動する量

var screen_size: Vector2

func _ready():
    screen_size = get_viewport_rect().size
    position += Vector2(rand_range(-10, 10), rand_range(-10, 10))

func _process(delta):
    position += (Vector2(rand_range(-per_move, per_move),
                        rand_range(-per_move, per_move)
                        ) * per_move) * delta
    position = Vector2(clamp(position.x, 0, screen_size.x),
                clamp(position.y, 0, screen_size.y))
    rotation_degrees += rand_range(-0.2, 0.2)
