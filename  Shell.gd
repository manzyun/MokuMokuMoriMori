extends Area2D

signal collision_telitory
signal collision_born

export var born = 3 # 誕生条件
export var alive = 3 # 生存条件
export var poor_die = 2 # 過疎死亡条件
export var dense_die = 4 # 過密死亡条件

export var per_move = 5 # 1フレームにつき移動する量

var screen_size

func _ready():
    screen_size = get_viewport_rect().size

func _process(delta):
        var verocity = Vector2()
        verocity.x = rand_range(0, per_move)
        verocity.y = rand_range(0, per_move)
        verocity = verocity.normalized() * per_move

        position += verocity * delta
        position.x = clamp(position.x, 0, screen_size.x)
        position.y = clamp(position.y, 0, screen_size.y)


func _on_Shell_collision_telitory(shell0, shell1):
    emit_signal("collision_telitory")
