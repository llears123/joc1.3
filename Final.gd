extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func _on_Final_body_entered(_body):
	
	hide()
	$Label.text = 'Win'
	$CollisionShape2D.set_deferred('disabled', true)
	get_tree().paused = true
