@tool
@icon("res://GoofNodes/Icons/Hitbox.svg")
class_name Hitbox
extends Area2D

@export var collider_shape: Shape2D:
    get:
        return collider.shape
    set(val):
        collider.shape = val

var collider: ColliderShape2D = CollisionShape2D()

func _init(shape: Shape2D) -> void:
    collider_shape = shape
    add_child(collider)
