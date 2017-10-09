extends Spatial

func _ready():
        pass

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		print("scene_reloaded")
		get_tree().reload_current_scene()
