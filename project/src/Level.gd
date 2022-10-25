extends Node2D

var PlayerScore1 = 0
var PlayerScore2 = 0

func _ready():
	_restart_game()

func _process(delta):
	$MarcadorPlayer.text = str(PlayerScore1)
	$MarcadorOpponent.text = str(PlayerScore2)

func _restart_game():
	
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960, 540)
	
	#$Ball.reset_ball()
	$RestartTimer.start()

func _on_ArcoPlayer_body_entered(body):
	if body is Ball:
		PlayerScore2 += 1
		_restart_game()


func _on_ArcoOponent_body_entered(body):
	if body is Ball:
		PlayerScore1 += 1
		_restart_game()


