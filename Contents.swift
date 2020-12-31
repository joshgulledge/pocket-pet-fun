import UIKit

class pets {
    
    var name = " "
    
    init(name:String) {
        self.name = name
    }
    
    func feed() {
        print ("\(name) likes the food. ")
    }
    
    func clean() {
        print ("\(name) likes the bubbles in the bath. ")
    }
    
    func play() {
        print ("\(name) enjoyed playing with you. ")
    }
    
    func sleep() {
        print ("\(name) has gone to sleep. ")
    }
    
}


class temagotchi: pets {
    var hunger = 0
    var dirt = 0
    var tired = 0
    var bored = 0
    var ageInDays:Double = 0
    
    override init(name: String) {
        
        super.init(name: name)
        
        bored = 20
    }
    
    var ageInMonths:Double {
        ageInDays / 30
    }
    
    var ageInYears:Double {
        ageInMonths / 12
    }
    
    func checkAge() {
        
        if ageInYears < 1 {
            
            print("\(name) is \(ageInMonths) months old. ")
            
        } else {
            
            print("\(name) is \(ageInYears) years old. ")
        }
        
    }
    
    override func feed() {
        
        if hunger == 0 {
            
            print("\(name) is already full")
            
        } else {
            
            super.feed()
            
        }
        
        hunger = 0
        dirt += 20
        tired += 10
        bored += 20
    }
    
    override func clean() {
        
        if dirt == 0 {
            
            print("\(name) is already clean")
            
        } else {
            
            super.clean()
            
        }
        
        dirt = 0
        hunger += 20
        bored += 20
        tired += 10
    }
    
    override func play() {
        
        if bored == 0 {
            print ("\(name) just played with you and wants to try something else.")
        } else {
            
            super.play()
            
        }
        
        bored = 0
        hunger += 20
        dirt += 20
        tired += 10
    }
    
    override func sleep() {
        
        if tired == 0 {
            
            print ("\(name) is not tired right now")
            
        } else {
            
            super.sleep()
            
        }
        
        ageInDays += 1
        
        tired = 0
        hunger += 20
        bored += 20
        dirt += 10
    }
    
    func check() {
        
        print (dirt)
        
        if dirt >= 60 {
            print ("\(name) needs to be cleaned")
        }
        
        print (hunger)
        
        if hunger >= 60 {
            print("\(name) needs to eat")
        }
        
        print (tired)
        
        if tired >= 60 {
            print ("\(name) is tired")
        }
        
        print (bored)
        
        if bored >= 60 {
            print("\(name) is bored")
        }
    }
    
}


var game = temagotchi(name: "Toby")











    










