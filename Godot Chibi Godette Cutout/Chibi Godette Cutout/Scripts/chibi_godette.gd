extends KinematicBody2D


var _anim_state


func _ready() -> void:
	var anim_tree: AnimationTree = $AnimationTree
	anim_tree.active = true
	_anim_state = anim_tree.get("parameters/playback")
	_anim_state.travel("Idle")
	
	var demo: DemoController = $".."
	demo.connect("button_pressed", self, "_on_button_pressed")


func _on_button_pressed(key: String) -> void:
	_anim_state.travel(key)
