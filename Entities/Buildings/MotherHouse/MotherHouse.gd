extends Node2D

func _ready():
	$Interior.show()
	$Roof.show()

func _on_RoofHiding_body_entered(body):
	if body.name == "Player":
		$Roof.hide()


func _on_RoofHiding_body_exited(body):
	if body.name == "Player":
		$Roof.show()
