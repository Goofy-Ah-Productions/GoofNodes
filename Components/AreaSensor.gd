@tool
@icon("res://GoofNodes/Icons/AreaSensor.svg")
class_name AreaSensor
extends Area2D

@export collider_shape: Shape2D:
    get:
        return collider.shape
    set(val):
        collider.shape = val

var collider: CollisionShape2D = CollisionShape2D();

func _init(shape: Shape2D) -> void:
    collider_shape = shape
    add_child(collider)
