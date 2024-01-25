@tool
@icon("res://GoofNodes/Icons/Attack.svg")
class_name Attack
extends Area2D

@export var value: float

@export var collider_shape: Shape2D:
    get:
        return collider.shape
    set(val):
        collider.shape = val

var collider: CollisionShape2D = CollisionShape2D()

func _init(val: float = 10, shape: Shape2D = Shape2D()) -> void:
    value = val
    collider_shape = shape
    add_child(collider)
