extends VRlessPlayer


func _enter_tree():
	xr_camera = get_owner().getXRCamera()


func _process(_delta):
	followXRCamera()


func followXRCamera():
	global_transform.origin.x = xr_camera.global_transform.origin.x



