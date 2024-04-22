extends StaticBody2D

var speed = 200
# Called when the node enters the scene tree for the first time.
func _ready():
	$Otazky.frame = randi_range(0,20)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x -= speed * delta
