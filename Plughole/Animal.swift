import UIKit
//import necessary kits/frameworks

class Animal {
    
    let name: String!
    let size: String!
    let location: Location
    var ocean: String!
    var country: String!
    
 //These are the variables for the Animal class which are called in the animalDetailViewController and also includes their type
    
    init(name: String, size: String, location: Location, ocean: String, country: String) {
        self.name = name
        self.size = size
        self.location = location
        self.ocean = ocean
        self.country = country
        
 //this init statement defines where abouts the variables are used within the class
        
        }
    }
    




func buildAnimals() -> [Animal] {
    
    var animals = [Animal]()
    
    let blacktipReefShark = Animal(name: "Blacktip Reef Shark", size: "Up to 180cm long", location: .Fish, ocean: "Indo-Pacific", country: "Australia, Mexico & India")
    animals.append(blacktipReefShark)
    let clownFish = Animal(name: "Clown Fish", size: "10cm to 18cm long", location: .Fish, ocean: "Indo-Pacific", country: "Australia & Indonesia")
    animals.append(clownFish)
    let epauletteShark = Animal(name: "Epaulette Shark", size: "Up to 107cm long", location: .Fish, ocean: "Pacific & Indian",country: "Australia, Papua & New Guinea")
    animals.append(epauletteShark)
    let lionFish = Animal(name: "Lion Fish", size: "Up to 38cm long", location: .Fish, ocean: "Pacific, Atlantic & Indian", country: "Australia, Indonesia & Florida")
    animals.append(lionFish)
    let morayEel = Animal(name: "Moray Eel", size: "Up to 300cm long", location: .Fish, ocean: "Indo-Pacific", country: "Indonesia, Australia")
    animals.append(morayEel)
    let redBelliedPiranha = Animal(name: "Red Bellied Piranha", size: "Up to 30cm long", location: .Fish, ocean: "Atlantic", country: "South America & Venezuela")
    animals.append(redBelliedPiranha)
    let regalTang = Animal(name: "Regal Tang", size: "Up to 50cm long", location: .Fish, ocean: "Pacific & Indian", country: "Africa & Australia")
    animals.append(regalTang)
    let seahorse = Animal(name: "Seahorse", size: "2cm up to 30cm long", location: .Fish, ocean: "Pacific, Atlantic & Indian", country: "USA, UK, India & Australia")
    animals.append(seahorse)
    let southernStingray = Animal(name: "Southern Stingray", size: "Up to 200cm long", location: .Fish, ocean: "Atlantic", country: "USA, Brazil")
    animals.append(southernStingray)
    
    //These are the animals within my Fish region and when the user is in this region the fact files are updated accordingly with the relevant information
    
    let moonJellyfish = Animal(name: "Moon Jellyfish", size: "Up to 25cm long", location: .Invertebrates, ocean: "Pacific, Atlantic & Inditan", country: "Britain")
    animals.append(moonJellyfish)
    let commonLobster = Animal(name: "Common Lobster", size: "Up to 60cm long", location: .Invertebrates, ocean: "Atlantic & Mediterranean", country: "Norway to Morroco")
    animals.append(commonLobster)
    let longSpinedSeaUrchin = Animal(name: "Long Spined Sea Urchin", size: "10-12cm long", location: .Invertebrates, ocean: "Atlantic & Mediterranean", country: "Norway to Morroco")
    animals.append(longSpinedSeaUrchin)
    let nautilus = Animal(name: "Nautilus", size: "Up to 20cm long", location: .Invertebrates, ocean: "Indo-Pacific", country: "Australia & Indonesia")
    animals.append(nautilus)
    let spinyLobster = Animal(name: "Spiny Lobster", size: "Up to 60cm long", location: .Invertebrates, ocean: "Atlantic & Mediterranean", country: "Norway to Morroco")
    animals.append(spinyLobster)
    
     //These are the animals within my Invertebrates region and when the user is in this region the fact files are updated accordingly with the relevant information
    
    let africanMudTurtle = Animal (name: "African Mud Turtle", size: "Up to 30cm long", location: .Turtles, ocean: "The Amazon", country: "Africa")
    animals.append(africanMudTurtle)
    let greenSeaTurtle = Animal (name: "Green Sea Turtle", size: "Over 100cm long", location: .Turtles, ocean: "Atlantic, Indian & Indo-Pacific", country: "Over 140 coastal waters")
    animals.append(greenSeaTurtle)
    let pigNosedTurtle = Animal (name: "Pig Nosed Turtle", size: "Up to 30cm long", location: .Turtles, ocean: "The Great Barrier Reef", country: "Australia & New Guinea")
    animals.append(pigNosedTurtle)
    
     //These are the animals within my Turtles region and when the user is in this region the fact files are updated accordingly with the relevant information
    
    let africanDwarfCrocodile = Animal(name: "African Dwarf Crocodile", size: "Up to 150cm long", location: .OtherReptiles, ocean: "Crocodile Rocks", country: "West & West Central Africa")
    animals.append(africanDwarfCrocodile)
    let chineseWaterDragon = Animal(name: "Chinese Water Dragon", size: "Up to 100cm long", location: .OtherReptiles, ocean: "Africa & the Ganges", country: "India, China & Asia")
    animals.append(chineseWaterDragon)
    let greenIguana = Animal(name: "Green Iguana", size: "Up to 200cm long", location: .OtherReptiles, ocean: "The Amazon", country: "America & the Caribbean Islands")
    animals.append(greenIguana)
    
     //These are the animals within my OtherReptiles region and when the user is in this region the fact files are updated accordingly with the relevant information
    
    let humboldtPenguin = Animal (name: "Humboldt Penguin", size: "56 - 70cm long", location: .Birds, ocean: "Pacific", country: "Chile & Peru")
    animals.append(humboldtPenguin)
    
     //These are the animals within my Birds region and when the user is in this region the fact files are updated accordingly with the relevant information
    
    return animals
}


func filterAnimalsByLocation(locationID: Location) -> [Animal] {
    let allAnimals = buildAnimals()
    
    var animals = [Animal]()
    
    for animal in allAnimals {
        if animal.location == locationID {
            animals.append(animal)
        }
    }
    
    //this function filters the animals that are displayed by the location the user is in using the locaiton ID and if the animal location is equal to the locationID then the animal will be added to fact file array
    
    return animals
}







