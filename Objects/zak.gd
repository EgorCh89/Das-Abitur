extends CharacterBody2D


const SPEED = 300.0
var odpoved = preload("res://Objects/Odpoved.tscn")
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var ready_to_shoot =true

func _physics_process(delta):


	# Get the input direction and handle the movement/deceleration.
	if Input.is_action_pressed("ui_left") and ready_to_shoot:
		ready_to_shoot = false
		$Timer.start()
		var od = odpoved.instantiate()
		od.position = self.position
		od.position.x -= 200
		$Odpovedi.add_child(od)
		
		
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_timer_timeout():
	ready_to_shoot = true
