extends Spatial

func play():
	get_node("video_player").play()

func stop():
	get_node("video_player").stop()

func pause():
	get_node("video_player").set_paused(true)

func unpause():
	get_node("video_player").set_paused(false)

func load_stream(stream):
	var player = get_node("video_player")
	player.set_stream(stream)
	get_node("cube").get_surface_material(0).set_texture(
			SpatialMaterial.TEXTURE_ALBEDO,
			player.get_video_texture())

func load_webm():
	load_stream(preload("res://llamigos-small.webm"))

func load_ogv():
	load_stream(preload("res://llamigos-small.ogv"))

func go_to_2d():
	stop()
	get_tree().change_scene("res://main.tscn")

func go_to_3d():
	stop()
	get_tree().change_scene("res://main_3d.tscn")

func _ready():
	get_node("buttons/play_button").connect("pressed", self, "play")
	get_node("buttons/stop_button").connect("pressed", self, "stop")
	get_node("buttons/pause_button").connect("pressed", self, "pause")
	get_node("buttons/unpause_button").connect("pressed", self, "unpause")
	get_node("buttons/webm_button").connect("pressed", self, "load_webm")
	get_node("buttons/ogv_button").connect("pressed", self, "load_ogv")
	get_node("buttons/2d_button").connect("pressed", self, "go_to_2d")
	get_node("buttons/3d_button").connect("pressed", self, "go_to_3d")
