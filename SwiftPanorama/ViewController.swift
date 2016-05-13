import UIKit

class ViewController: GLKViewController {
    
    @IBOutlet weak var panoramaView: PanoramaView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        panoramaView.initialize()
        
        panoramaView.setImageWithName("park_2048.jpg")
        panoramaView.touchToPan = true          // Use touch input to pan
        panoramaView.orientToDevice = false     // Use motion sensors to pan
        panoramaView.pinchToZoom = true         // Use pinch gesture to zoom
        panoramaView.showTouches = true         // Show touches
    }
    
    override func glkView(view: GLKView, drawInRect rect: CGRect) {
        panoramaView.draw()
    }
}

