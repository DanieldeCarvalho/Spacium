extends Area2D
signal hit
var score = 1
var speed = -10
func _ready():
	pass

func _physics_process(delta):
	speed += -0.1
	position.x += speed

func _process(delta):
	var LabelNode = get_parent().get_parent().get_node("CanvasLayer/Control/RichTextLabel")
#	LabelNode.text = int(score)
	
	if position.x < 0:
		queue_free()
	
	pass

func _on_enemy_body_entered(body):
	queue_free()
	get_tree().change_scene("res://Scenes/menu.tscn")
	contador_score()
	pass

func contador_score():
	score + 1	
	print(score)
