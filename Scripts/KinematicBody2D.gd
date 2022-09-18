extends KinematicBody2D


func _ready():
	pass
	
func _physics_process(delta):
	print(self.position.x)
	var vel = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		vel.x = 300
	if Input.is_action_pressed("ui_left"):
		vel.x = -300
	if Input.is_action_pressed("ui_down"):
		vel.y = 300
	if Input.is_action_pressed("ui_up"):
		vel.y = -300
	
	move_and_slide(vel)
	
	if position.x > 1070:
		queue_free()
		get_tree().change_scene("res://Scenes/menu.tscn")
	pass

func _on_enemy_body_entered(body):
	print("entrou")
	 
