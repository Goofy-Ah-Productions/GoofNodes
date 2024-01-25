@tool
@icon("res://GoofNodes/Icons/UserInput.svg")
class_name UserInput
extends GInput

var actions: Array[string] = {
    "Up",
    "Down",
    "Left",
    "Right",
    "ActionOne",
    "ActionTwo",
    "ActionThree",
    "ActionFour",
    "ActionFive"
}

func _init() -> void:
    for action in actions:
        if not InputMap.get_actions().contains(action):
            InputMap.add_action(action)

func _process(delta: float) -> void:
    super(delta)

    up_pressed = Input.is_action_pressed("Up");
    down_pressed = Input.is_action_pressed("Down");
    left_pressed = Input.is_action_pressed("Left");
    right_pressed = Input.is_action_pressed("Right");
    action_one_pressed = Input.is_action_pressed("ActionOne");
    action_two_pressed = Input.is_action_pressed("ActionTwo");
    action_three_pressed = Input.is_action_pressed("ActionThree");
    action_four_pressed = Input.is_action_pressed("ActionFour");
    action_five_pressed = Input.is_action_pressed("ActionFive");
