//
//  PetModel.swift
//  SwiftTableviewProj
//
//  Created by Satabdi Das on 26/04/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class PetModel: NSObject {

    enum Rarity:String {
       case common
       case uncommon
       case rare
       case veryRare 
    }
    
    let petName:String
    let petBirthday:Date
    let petRarity:Rarity
    let petImage:UIImage
    
    init(petName:String,petBirthday:Date,petRarity:Rarity,petImage:UIImage)
    {
        
        self.petName = petName
        self.petBirthday = petBirthday
        self.petRarity = petRarity
        self.petImage = petImage
    }
}
