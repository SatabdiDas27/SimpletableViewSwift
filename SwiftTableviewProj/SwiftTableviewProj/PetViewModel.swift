//
//  PetViewModel.swift
//  SwiftTableviewProj
//
//  Created by Satabdi Das on 26/04/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class PetViewModel: NSObject {

    private let pet:PetModel
    private let calendar:Calendar
    
    public init(pet:PetModel) {
        self.pet = pet
        self.calendar = Calendar(identifier: .gregorian)
    }
    
    public var petName:String {
        return pet.petName
    }
    
    public var petImage:UIImage {
        return pet.petImage
    }
    
    public var petRarity:String {
        
        return String(pet.petRarity.rawValue)
        
    }
    
    public var petAge:String {
        
        let todayDate = calendar.startOfDay(for: Date())
        let birthDayDate = calendar.startOfDay(for: pet.petBirthday)
        let components = calendar.dateComponents([.year], from: birthDayDate, to: todayDate)
        
        let ageOfPet = components.year!
        
        return "\(ageOfPet) years old"
    }
    
    public var petAdoptionFee:String {
        
        switch pet.petRarity {
        case .common:
            return "$50.00"

        case .uncommon:
            return "$75.00"
            
        case .rare:
            return "$150.00"
            
        case .veryRare:
            return "$500.00"
  
        }
    }
    
   // public var arrayOfPetViewModels:[PetViewModel] {
        
       // var arrayOfPets = [PetViewModel]()
        
    //}
    
}
