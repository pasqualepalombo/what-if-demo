extends Node2D

func _ready():
	$Roof.visible = true
	$Interior.visible = true


func _on_RoofHiding_body_entered(body):
	if body.name == "Player":
		$Roof.hide()


func _on_RoofHiding_body_exited(body):
	if body.name == "Player":
		$Roof.show()
