import UIKit

class ViewController: GLKViewController {
    
    var panoramaView = PanoramaView()
    
    override func loadView() {
        panoramaView.setImageWithName("park_2048.jpg")
        panoramaView.touchToPan = true          // Use touch input to pan
        panoramaView.orientToDevice = false     // Use motion sensors to pan
        panoramaView.pinchToZoom = true         // Use pinch gesture to zoom
        panoramaView.showTouches = true         // Show touches
        self.view = panoramaView
    }
    
    override func glkView(view: GLKView, drawInRect rect: CGRect) {
        panoramaView.draw()
    }
}

