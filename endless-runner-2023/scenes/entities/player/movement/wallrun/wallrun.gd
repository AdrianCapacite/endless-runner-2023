extends Movement


# Public Variables
export var wallrun_speed: float = 0.25


func _enter_tree():
	kinematic_body = get_parent().getKinematicBody()
	xr_left_controller = get_parent().getXRLeftController()
	xr_right_controller = get_parent().getXRRightContoller()


func wallrunPlayer():	
	wallrun_status = get_parent().getWallrunStatus()

	
	if(!xr_left_controller.getWallrunStatus() and !xr_right_controller.getWallrunStatus() ):
		get_parent().setWallrunStatus(false)
		return
	
	if(!xr_left_controller.leftControllerInput("LEFT_GRIP") and !xr_right_controller.rightControllerInput("RIGHT_GRIP")):
		return
		
	get_parent().setVelocityY(0)
	
	if(kinematic_body.global_transform.origin.y > 3):
		return
	
	get_parent().setVelocityY(wallrun_speed)
		
	get_parent().setWallrunStatus(true)
