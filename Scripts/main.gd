extends Node2D

var pre_enenmy = preload("res://Scenes/enemy.tscn")
var tempo = 0

func _ready():
	pass 
	
func _process(delta):
	tempo += delta
	if tempo > 2:
		Spawn_enemy()
		tempo  = 0
	pass
	
func Spawn_enemy():
	var e = pre_enenmy.instance()
	e.position = Vector2(1030, rand_range(50,600))
	add_child(e)
	
