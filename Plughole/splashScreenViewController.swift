import UIKit
import CoreLocation
import MapKit

//import necessary kits/frameworks

class splashScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        
        
        if motion == .MotionShake {
            performSegueWithIdentifier("Enter", sender: self)
            print("shaken")
        }
     //This function allows the user to shake the iphone in order to gain access to the app and unless the phone is shaken then access is not granted.
        
    }
}

