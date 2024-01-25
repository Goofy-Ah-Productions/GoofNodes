@tool
@icon("res://GoofNodes/Icons/BotInput.svg")
class_name BotInput
extends GInput

@export target: Vector2

@export is_active: bool
@export activation_detection_sensor: AreaSensor

@export up_sensor: RaySensor
@export down_sensor: RaySensor
@export left_sensor: RaySensor
@export right_sensor: RaySensor

@export up_sensor_length: float:
    get:
        -up_sensor.target_position.y
    set(val):
        up_sensor.target_position.y = -val

@export down_sensor_length: float:
    get:
        down_sensor.target_position.y
    set(val):
        down_sensor.target_position.y = val

@export left_sensor_length: float:
    get:
        -left_sensor.target_position.y
    set(val):
        left_sensor.target_position.y = -val

@export right_sensor_length: float:
    get:
        right_sensor.target_position.y
    set(val):
        right_sensor.target_position.y = val

func _activate(body: Node2D) -> void:
    if body.name.contains("Player"):
        is_active = true

func _init() -> void:
    add_child(up_sensor)
    add_child(down_sensor)
    add_child(left_sensor)
    add_child(right_sensor)

    up_sensor_length = 50;
    down_sensor_length = 50;
    left_sensor_length = 50;
    right_sensor_length = 50;

func _ready() -> void:
    super()

    if activation_detection_sensor != null:
        activation_detection_sensor.body_entered.connect(_activate)

func _process(delta: float) -> void:
    super(delta)

    if Engine.is_editor_hint():
        return

    if not is_active:
        return

    if up_sensor.is_colliding():
        up_pressed = true
        down_pressed = false

    if down_sensor.is_colliding():
        down_pressed = true
        up_pressed = false

    if left_sensor.is_colliding():
        right_pressed = true
        left_pressed = false

    if right_sensor.is_colliding():
        left_pressed = true
        right_pressed = false
