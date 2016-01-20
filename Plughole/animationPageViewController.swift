import UIKit
//import necessary kits/frameworks

class animationPageViewController: UIViewController {
    
    @IBOutlet weak var penguin: UIImageView!
    @IBOutlet weak var plughole: UIImageView!
    @IBOutlet weak var crab: UIImageView!
    @IBOutlet weak var fish: UIImageView!
    
    //the above outlets are linking the images from my storyboard so I can edit them within my code and animate them
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var bars: UIImageView!
    
    //this is linking my image of the bars to this view controller so I can animate it
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(4.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: { () -> Void in
            
            //animation general setting the duration to 4 - the others are individually set within each animal animation below
            
            self.plughole.center.x = self.plughole.center.x + 300
            
            //This moves the plug across the screen to allow the animals to be drawn into it
        
            self.penguin.animationDuration = 3.0
            self.penguin.center.y = self.penguin.center.x + 400
            self.penguin.center.x = self.penguin.center.x - 75
            self.penguin.alpha = 0
            self.penguin.transform = CGAffineTransformMakeScale(0.3, 0.8)
            
            //this animates the penguin so that it moves down and across and fades out as it reaches the plughole
        
            self.crab.animationDuration = 3.0
            self.crab.center.x = self.penguin.center.x - 60
            self.crab.center.y = self.penguin.center.y + 25
            self.crab.alpha = 0
            self.crab.transform = CGAffineTransformMakeScale(0.3, 0.8)
            
            //this animates the crab so that it moves down and across and fades out as it reaches the plughole
            
            self.fish.animationDuration = 3.0
            self.fish.center.y = self.fish.center.x + 400
            self.fish.center.x = self.fish.center.x - 140
            self.fish.alpha = 0
            self.fish.transform = CGAffineTransformMakeScale(0.3, 0.8)
            
            //this animates the fish so that it moves down and across and fades out as it reaches the plughole
            
            self.bars.animationDuration = 1.0
            self.bars.center.y = self.bars.center.x - 450
            self.bars.alpha = 0
            
            //this animates the bars so they move up the screen and give the sense of unlocking the animals and the app itself
            
            }) { (Bool) -> Void in
                
                self.performSegueWithIdentifier("MapScreen", sender: self)

                //this segue transitions to the map screen with a disabled, all faded out map image to demonstrate no regions accessed
        }
    }
    
}