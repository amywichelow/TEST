
import UIKit
//import necessary kits/frameworks

class animalDetailViewController: UIViewController {
    
    var animalLocation: Location!
    var animals: [Animal]!
    var counter = 0
    
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var oceanLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var fishImage: UIImageView!
    @IBOutlet weak var specieImage: UIImageView!
    
    //link all my fact file lines/images to the code so that they can be altered depending on what animal variables are being displayed
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animals = filterAnimalsByLocation(animalLocation)
        //This organises the animal fact files in type by location so they are all grouped together eg. the fish location will display all the fish fact files and allow the user to swipe through them all
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "swipeRight")
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        //user can swipe right between the different fact files
        
        updateView()
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "swipeLeft")
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        //user can swipe left through the fact files
        
        updateView()
    }
    
    @IBAction func fav(sender: AnyObject) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var faves = defaults.valueForKey("faves") as? [String]
        
        
        if faves == nil {
            faves = [String]()
        }
        
        print(faves!.count)
        
        if !faves!.contains(animals[counter].name) {
            faves!.append(animals[counter].name)
        }
        
        
        defaults.setValue(faves, forKey: "faves")
        
    }
    
    func swipeRight() {
        if counter < animals.count - 1 {
            counter++
        } else {
            counter = 0
        }
        updateView()
        
        //the counter must be less than the animal count - 1 so that the fact file goes to the begining each time and the user can swipe from right to left

    }
    
    func swipeLeft() {
        if counter > 0 {
            counter--
        } else {
            counter = animals.count - 1
        }
        
        updateView()
        
    }
    
    //if the counter is greater than 0 then it will swipe back to the beging and if the counter is equal to the animal count minus 1 then it will again, allowing the user to swipe all the way through on a loop from right to left aswell
    
    func updateView() {
        let animal = animals[counter]
        nameLable.text = animal.name
        sizeLabel.text = animal.size
        oceanLabel.text = animal.ocean
        countryLabel.text = animal.country
        fishImage.image = UIImage(named: animal.name)
        specieImage.image = UIImage(named: animal.name+"Status")
    }
    
    //this updates the fact file labels/images according to the variables I wrote out in Animal.swift and links them up
    //The image is references as the name of the animal which is what I saved the image asset as - saving code
    //The conservation status bar is linked to by the animal name too but with an extra "status" in the image file name in assets so that it is differentiated from the animal image reference
    
}