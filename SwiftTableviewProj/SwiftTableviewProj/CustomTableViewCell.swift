//
//  CustomTableViewCell.swift
//  SwiftTableviewProj
//
//  Created by Satabdi Das on 13/04/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var petNameLabel:UILabel!
    @IBOutlet weak var petAgeLabel:UILabel!
    @IBOutlet weak var petRarityLabel:UILabel!
    @IBOutlet weak var petAdoptionFeeLabel:UILabel!
    @IBOutlet weak var petImage:UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
