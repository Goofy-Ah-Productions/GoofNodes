@tool
@icon("res://GoofNodes/Icons/Health.svg")
class_name Health
extends Node

var _value: float
var _min_value: float
var _max_value: float

@export var health_bar: HealthBar

@export value: float:
    get:
        return _value
    set(val):
        _value = val
        if health_bar != null:
            health_bar.value = val

@export min_value: float:
    get:
        return _min_value
    set(val):
        _min_value = val
        if health_bar != null:
            health_bar.min_value = val

@export max_value: float:
    get:
        return _max_value
    set(val):
        _max_value = val
        if health_bar != null:
            health_bar.max_value = val

func _init(val: float = 100, min_val: float = 0, max_val: float = 100) -> void:
    value = val
    min_value = min_val
    max_value = max_val

func heal(float amount) -> void:
    value += amount

func hurt(float amount) -> void:
    value -= amount

func is_dead() -> bool:
    return (value <= 0)
