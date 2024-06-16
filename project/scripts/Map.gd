extends Node2D

var LOWER_SCALE = 0.8
var LOWER_PARRALAX = 1 - self.LOWER_SCALE


# Called when the node enters the scene tree for the first time.
func _ready():
    $Lower.scale = Vector2(LOWER_SCALE, LOWER_SCALE)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    $Lower.position = %Camera.position * LOWER_PARRALAX
