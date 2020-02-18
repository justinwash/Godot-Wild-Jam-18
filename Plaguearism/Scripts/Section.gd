extends Label

export var active = false
export(float, 0.0, 10) var delay = 0
export(float, 0.1, 1.0) var slow = 0.5

var t = 0
	
func _physics_process(delta):
	if active && t >= delay*60:
		if (t % int((10*(slow*2))) == 0):
			self.visible_characters += 1
	t += 1
