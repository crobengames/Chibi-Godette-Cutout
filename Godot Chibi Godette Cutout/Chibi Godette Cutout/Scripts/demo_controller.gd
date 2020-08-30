class_name DemoController
extends Node2D


signal button_pressed(key)


func _emit_button_pressed(key: String) -> void:
	emit_signal("button_pressed", key)


func _on_IdleButton_button_down() -> void:
	_emit_button_pressed("Idle")


func _on_WalkButton_button_down() -> void:
	_emit_button_pressed("Walk")


func _on_RunButton_button_down() -> void:
	_emit_button_pressed("Run")


func _on_JumpButton_button_down() -> void:
	_emit_button_pressed("Jump")


func _on_FallButton_button_down() -> void:
	_emit_button_pressed("Fall")


func _on_DashButton_button_down() -> void:
	_emit_button_pressed("Dash")


func _on_DeathButton_button_down() -> void:
	_emit_button_pressed("Death")
