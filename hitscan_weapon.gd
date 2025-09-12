extends Node3D

@onready var cooldown_timers: Timer = $CooldownTimers
@export var fire_rate := 14


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("fire"):
		if cooldown_timers.is_stopped():
			cooldown_timers.start(1.0 / fire_rate)
			print("weapon fired")
