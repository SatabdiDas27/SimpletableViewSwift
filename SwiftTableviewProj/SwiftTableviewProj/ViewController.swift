//
//  ViewController.swift
//  SwiftTableviewProj
//
//  Created by Satabdi Das on 13/04/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
   
    @IBOutlet weak var displayTableView:UITableView!
    var arrayOfPetViewModels:[PetViewModel]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.displayTableView.register(nib, forCellReuseIdentifier: "swiftCustomCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.arrayOfPetViewModels = populateDataForPets()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayOfPetViewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "swiftCustomCell") as! CustomTableViewCell
      //  cell.cellLabel.text = "Satabdi"
        let viewModelPet = self.arrayOfPetViewModels[indexPath.row] as PetViewModel
        cell.petNameLabel.text = viewModelPet.petName
        cell.petAgeLabel.text = viewModelPet.petAge
        cell.petAdoptionFeeLabel.text = viewModelPet.petAdoptionFee
        cell.petRarityLabel.text = viewModelPet.petRarity
        cell.petImage.image = viewModelPet.petImage
        return cell
    }

    func populateDataForPets()->[PetViewModel]? {
        // MARK: - Example
        // 1
        var arrayOfPets = [PetViewModel]()
        let birthday = Date(timeIntervalSinceNow: (-2 * 86400 * 366))
        let image =  UIImage(named: "Stuart.jpg")!
        let stuart = PetModel(petName: "Stuart", petBirthday: birthday, petRarity: .veryRare, petImage: image)
        

        arrayOfPets.append(PetViewModel(pet: stuart))
        
        
        let birthdayHolly = Date(timeIntervalSinceNow: (-2 * 86400 * 234))
        let imageHolly =  UIImage(named: "Holly.jpg")!
        let holly = PetModel(petName: "Holly", petBirthday: birthdayHolly, petRarity: .common, petImage: imageHolly)
        
        arrayOfPets.append(PetViewModel(pet: holly))
        
        
        let birthdayJoey = Date(timeIntervalSinceNow: (-2 * 86400 * 567))
        let imageJoey =  UIImage(named: "Joey.jpg")!
        let joey = PetModel(petName: "Joey", petBirthday: birthdayJoey, petRarity: .rare, petImage: imageJoey)
        
    
        arrayOfPets.append(PetViewModel(pet: joey))
        
        
        let birthdayCutie = Date(timeIntervalSinceNow: (-2 * 86400 * 456))
        let imageCutie =  UIImage(named: "Cutie.png")!
        let cutie = PetModel(petName: "Cutie", petBirthday: birthdayCutie, petRarity: .uncommon, petImage: imageCutie)
        

        arrayOfPets.append(PetViewModel(pet: cutie))
        
        
        return arrayOfPets
    }
}

