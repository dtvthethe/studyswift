// ** 1 PI = 180 
timer = Timer.scheduledTimer(withTimeInterval: xx, repeat: true/false, block: {(time) in
	self.angula += 10
	self.imgABC.transform = CGAffineTransform(rotationAngle:(self.angula * M_PI / 100)) // M_PI == pi
})