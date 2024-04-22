extends Area2D

var speed = 200
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.position.y < $"../Zak".position.y:
		self.position.y += speed * delta
	else:
		self.position.y -= speed * delta


func _on_tuseni_body_entered(body):
	self.position.y += 200 * randi_range(-1,1)
	
