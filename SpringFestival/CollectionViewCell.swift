//
//  CollectionViewCell.swift
//  SpringFestival
//
//  Created by 山岸善将 on 2021/10/14.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label.adjustsFontSizeToFitWidth = true
    }

}
