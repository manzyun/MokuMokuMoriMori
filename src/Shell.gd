extends Area2D

export var per_move = 5 # 1フレームにつき移動する量

var screen_size: Vector2

func _ready():
    screen_size = get_viewport_rect().size
    position = Vector2(rand_range(-10, 10), rand_range(-10, 10))

func _process(delta):
    position += (Vector2(rand_range(-per_move, per_move),
                        rand_range(-per_move, per_move)
                        ).normalized() * per_move) * delta
    position = Vector2(clamp(position.x, 0, screen_size.x),
                clamp(position.y, 0, screen_size.y))

func __BornPosition(n0: Area2D, n1: Area2D) -> Vector2:
    return Vector2((position.x + n0.position.x + n1.position.x) / 3,
                    (position.y + n0.position.y + n1.position.y) / 3)
