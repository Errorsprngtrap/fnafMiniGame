extends Area2D
class_name Ballon


func _on_body_entered(body: Node2D) -> void:
	if body is BallonBoy:
		body.ballonsNumber += 1
		print("got the ballon")
		queue_free()
