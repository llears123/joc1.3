extends KinematicBody2D
export (int) var V
var moviment := Vector2()
var limit := Vector2()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	limit = get_viewport_rect().size



func _process(delta):
	moviment = Vector2()
	if Input.is_action_pressed("ui_right"):
		moviment.x += 1
	if Input.is_action_pressed("ui_left"):
		moviment.x -= 1
	if Input.is_action_pressed("ui_down"):
		moviment.y += 1
	if Input.is_action_pressed("ui_up"):
		moviment.y -= 1
	
	if moviment.length() > 0: 
		moviment = moviment.normalized() * V
		
	position += moviment * delta
	position.x = clamp(position.x, 0, limit.x)
	position.y = clamp(position.y, 0, limit.y)
