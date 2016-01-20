enum Location: Int {
    case Fish = 1, Turtles, Invertebrates, Birds, OtherReptiles
}

// enums

import UIKit
import AVFoundation
import AudioToolbox
//import necessary kits/frameworks

class mapPageViewController: UIViewController {
    
    @IBOutlet weak var factButton: UIBarButtonItem!
    //links class to the map view controller

    var userLocation: Location!
    //creates a variable of user location equal to the location of animals
    
    let systemSoundID: SystemSoundID = 1016

    //references the 'tweet' iOS sound
    
    @IBOutlet weak var mapImage: UIImageView!
    //links the image to the view controller
    
    
    let beaconManager = ESTBeaconManager()
    // This means that the reference beaconManager is always equal to ESTBeaconManager throughout the entire project
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        factButton.enabled = false
        
        beaconManager.delegate = self
        beaconManager.requestAlwaysAuthorization()
        //this requests authorization from the user to allow iBeacons to be used in the app and their bluetooth services/location be accessed - if they don't allow this then they will not gain access to any information
        
        beaconManager.startMonitoringForRegion(CLBeaconRegion(
            proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!,
            major: 4838, minor: 14161, identifier: "Fish"))
        
        //references the iBeacon which will be places in the Fish region and will display fish fact file array when user is in proximity of this iBeacon
        
        beaconManager.startMonitoringForRegion(CLBeaconRegion(
            proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!,
            major: 22081, minor: 17109, identifier: "Invertebrates"))
        
        //references the iBeacon which will be places in the Invertebrates region and will display fish fact file array when user is in proximity of this iBeacon
        
        beaconManager.startMonitoringForRegion(CLBeaconRegion(
            proximityUUID: NSUUID(UUIDString: "B9407F30-F5F8-466E-AFF9-25556B57FE6D")!,
            major: 4023, minor: 59596, identifier: "OtherReptiles"))
        
        //references the iBeacon which will be places in the Other Reptiles region and will display fish fact file array when user is in proximity of this iBeacon
        
        
    }
    
    func updateView(area: Location) {
        //ibeacon will trigger this to be called with some sort of number....
        
    
        switch area {
        case .Fish:
            mapImage.image = UIImage(named: "mapfish")
            userLocation = .Fish
            //links the map image with only the fish regions enabled to show user where they are

        case .Turtles:
            mapImage.image = UIImage(named: "mapturtle")
            userLocation = .Turtles
            //links the map image with only the turtle region enabled to show user where they are

        case .Invertebrates:
            mapImage.image = UIImage(named: "mapinverterbrates")
            userLocation = .Invertebrates
            //links the map image with only the invertebrate region enabled to show user where they are

        case .Birds:
            mapImage.image = UIImage(named: "mapbird")
            userLocation = .Birds
            //links the map image with only the bird region enabled to show user where they are

        case .OtherReptiles:
            mapImage.image = UIImage(named: "mapotherreptiles")
            userLocation = .OtherReptiles
            //links the map image with only the reptile region enabled to show user where they are located

        }
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "AnimalDetail" {
            let vc = segue.destinationViewController as! animalDetailViewController
            vc.animalLocation = userLocation
        }
        
        //this displays the animal fact file view depending on the user location and the animal location
      
    }
    
    
}

extension mapPageViewController: ESTBeaconManagerDelegate {
    
    func beaconManager(manager: AnyObject,
        didEnterRegion region: CLBeaconRegion) {
        print(region.identifier)
        if region.identifier == "Fish" {
            updateView(.Fish)
            //this tells the app to update when entering the new region and will change the array and map image shown
            AudioServicesPlaySystemSound (systemSoundID)


        }
        if region.identifier == "Invertebrates" {
            updateView(.Invertebrates)
            //this tells the app to update when entering the new region and will change the array and map image shown
            AudioServicesPlaySystemSound (systemSoundID)


        }
        if region.identifier == "OtherReptiles" {
            updateView(.OtherReptiles)
            //this tells the app to update when entering the new region and will change the array and map image shown
            AudioServicesPlaySystemSound (systemSoundID)


        }
        if region.identifier == "Turtles" {
            updateView(.Turtles)
            //this tells the app to update when entering the new region and will change the array and map image shown
            AudioServicesPlaySystemSound (systemSoundID)


        }
        if region.identifier == "Birds" {
            updateView(.Birds)
            //this tells the app to update when entering the new region and will change the array and map image shown
            AudioServicesPlaySystemSound (systemSoundID)

        }
        factButton.enabled = true
    }
    
    func beaconManager(manager: AnyObject, didExitRegion region: CLBeaconRegion) {
        mapImage.image = UIImage(named: "mapAllDisabled")
        factButton.enabled = false
    }

}