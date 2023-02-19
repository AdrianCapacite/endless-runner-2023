extends Spatial
class_name VRlessPlayer


# Priavte Variables
var xr_camera: ARVRCamera
var xr_origin: ARVROrigin
var xr_left_controller: ARVRController
var xr_right_controller: ARVRController
var kinematic_body: KinematicBody
var collision_shape: CollisionShape

func _enter_tree():
	# Setting up Nodes
	setXRCamera()
	setXROrigin()
	setXRLeftController()
	setXRRightContoller()
	setKinematicBody()
	setCollisionShape()


# Setter Nodes Functions
func setXRCamera():
	xr_camera = $KinematicBody/XROrigin/XRCamera

func setXROrigin():
	xr_origin = $KinematicBody/XROrigin

func setXRLeftController():
	xr_left_controller = $KinematicBody/XROrigin/XRLeftHand

func setXRRightContoller():
	xr_right_controller = $KinematicBody/XROrigin/XRRightHand

func setKinematicBody():
	kinematic_body = $KinematicBody

func setCollisionShape():
	collision_shape = $KinematicBody/CollisionShape

# Getter Functions
func getXRCamera() -> ARVRCamera:
	return xr_camera

func getXROrigin() -> ARVROrigin:
	return xr_origin

func getXRLeftController() -> ARVRController:
	return xr_left_controller

func getXRRightContoller() -> ARVRController:
	return xr_right_controller

func getKinematicBody() -> KinematicBody:
	return kinematic_body

func getCollisionShape() -> CollisionShape:
	return collision_shape
