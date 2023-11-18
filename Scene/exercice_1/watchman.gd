extends Node2D

var enemy = null
func _on_area_2d_area_entered(area):
	$StateChart.send_event("enemy_entered")
	enemy = area.get_parent()


func _on_area_2d_area_exited(area):
	$StateChart.send_event("enemy_exit")


func _on_observing_state_processing(delta):
	look_at(enemy.global_position)




func _on_idle_state_entered():
	rotation_degrees = -90
	enemy = null
