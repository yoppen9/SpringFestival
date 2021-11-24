//
//  VenueCollectionViewCell.swift
//  SpringFestival
//
//  Created by 山岸善将 on 2021/11/16.
//

import UIKit

class VenueCollectionViewCell: UICollectionViewCell {
    
    private let venueNameLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 10, y: 10, width: 380, height: 50)
        label.font = .systemFont(ofSize: 20, weight: UIFont.Weight(rawValue: 10))
        label.numberOfLines = 0
        label.lineBreakMode = .byCharWrapping
        return label
    }()
    private let venueImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 10, y: 50, width: 380, height: 270)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let venueTellLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 10, y: 325, width: 380, height: 30)
        label.font = .systemFont(ofSize: 18)
//        label.layer.borderColor = UIColor.red.cgColor
//        label.layer.borderWidth = 1
        return label
    }()
    private let venueAccessLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 10, y: 355, width: 380, height: 30)
        label.font = .systemFont(ofSize: 18)
//        label.layer.borderColor = UIColor.blue.cgColor
//        label.layer.borderWidth = 1
        return label
    }()
    private let venueExplanationLabel: UITextView = {
        let label = UITextView()
        label.isEditable = false
        label.frame = CGRect(x: 6, y: 390, width: 380, height: 110)
        label.font = .systemFont(ofSize: 18)
        label.layer.borderColor = UIColor.gray.cgColor
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 10
        return label
    }()
    private let mapButton: UIButton = {
        let button = UIButton()
        button.setTitle("地図", for: .normal)
        button.setTitleColor(UIColor(red: 255/255, green: 98/255, blue: 201/255, alpha: 1), for: .normal)
        button.frame = CGRect(x: 160, y: 515, width: 80, height: 30)
        button.layer.borderColor = UIColor(red: 255/255, green: 98/255, blue: 201/255, alpha: 1).cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        return button
    }()
    private let siteButton: UIButton = {
        let button = UIButton()
        button.setTitle("公式サイト", for: .normal)
        button.setTitleColor(UIColor(red: 255/255, green: 98/255, blue: 201/255, alpha: 1), for: .normal)
        button.frame = CGRect(x: 250, y: 515, width: 130, height: 30)
        button.layer.borderColor = UIColor(red: 255/255, green: 98/255, blue: 201/255, alpha: 1).cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        contentView.addSubview(venueNameLabel)
        contentView.addSubview(venueImageView)
        contentView.addSubview(venueTellLabel)
        contentView.addSubview(venueAccessLabel)
        contentView.addSubview(venueExplanationLabel)
        contentView.addSubview(mapButton)
        contentView.addSubview(siteButton)
    }
    
    func setUpContents(textName: String, image: UIImage, tellNumber: String, accessText: String, textExplanation: String){
        venueNameLabel.text = textName
        venueImageView.image = image
        venueTellLabel.text = tellNumber
        venueAccessLabel.text = accessText
        venueExplanationLabel.text = textExplanation
    }
    
}

