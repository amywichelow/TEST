import Foundation
import UIKit
import AVFoundation
import AudioToolbox
//import necessary kits/frameworks

class listPageViewController: UIViewController {
    

    
    var faves: [String]?
    
    @IBOutlet weak var fav1: UILabel!
    @IBOutlet weak var fav2: UILabel!
    @IBOutlet weak var fav3: UILabel!
    @IBOutlet weak var fav4: UILabel!
    @IBOutlet weak var fav5: UILabel!
    
    
    @IBAction func reset(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var faves = defaults.valueForKey("faves") as? [String]
        
        if faves == nil {
            faves = [String]()
        }
        defaults.setValue(nil, forKey: "faves")
        
        
         fav1.text = nil
         fav2.text = nil
         fav3.text = nil
         fav4.text = nil
         fav5.text = nil
        
        
//this resets the favourties list to 0 so that no favourties are shown and the user can choose 5 more to add.
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     


    }
    
    func tableView(tableview: UITableView,numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func viewDidAppear(animated: Bool) {
        faves = NSUserDefaults.standardUserDefaults().valueForKey("faves") as? [String]
        
        
        if faves == nil {
            faves = [String]()
        }
        
        
        
        
            for fave in faves! {
            print(fave)
            
            if faves!.count > 0 {
                fav1.text = faves![0]
            }
            
            if faves!.count > 1 {
                fav2.text = faves![1]
            }
            
            if faves!.count > 2 {
                fav3.text = faves![2]
            }
            
            if faves!.count > 3 {
                fav4.text = faves![3]
            }
            
            if faves!.count > 4 {
                fav5.text = faves![4]
            }
            
        }
        
        
        //this allows the user to add just 1 or 2 or 3 or 4 or 5 animals so they don't have to add all 5. and it will remove them all when they press reset

        
    }
    
    
    
}

