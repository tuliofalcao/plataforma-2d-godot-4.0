extends Area2D






const BOUNCE_VELOCITY := -400.0


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		body.velocity.y = BOUNCE_VELOCITY
		owner.anim.play("hurt")
