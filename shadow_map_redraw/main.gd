extends Spatial

func _ready():
	get_node("main_2d/shadow_caster_button").set_pressed(true)
	get_node("main_2d/spot_light_button").set_pressed(true)
	set_process(true)
	pass

func _process(delta):
	var pressed
	
	pressed = get_node("main_2d/shadow_caster_button").is_pressed()
	get_node("shadow_caster").set_visible(pressed)

	pressed = get_node("main_2d/spot_light_button").is_pressed()
	get_node("spot_light").set_visible(pressed)

