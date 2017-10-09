extends Control

func play():
	get_node("video_player").play()

func stop():
	get_node("video_player").stop()

func pause():
	get_node("video_player").set_paused(true)

func unpause():
	get_node("video_player").set_paused(false)

func load_webm():
	get_node("video_player").set_stream(preload("res://llamigos-small.webm"))

func load_ogv():
	get_node("video_player").set_stream(preload("res://llamigos-small.ogv"))

func _ready():
	get_node("play_button").connect("pressed", self, "play")
	get_node("stop_button").connect("pressed", self, "stop")
	get_node("pause_button").connect("pressed", self, "pause")
	get_node("unpause_button").connect("pressed", self, "unpause")
	get_node("webm_button").connect("pressed", self, "load_webm")
	get_node("ogv_button").connect("pressed", self, "load_ogv")
