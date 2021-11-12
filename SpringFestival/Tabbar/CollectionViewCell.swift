//
//  CollectionViewCell.swift
//  SpringFestival
//
//  Created by 山岸善将 on 2021/11/10.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    private let cellNameLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 15, y: 100, width: 150, height: 150)
        label.font = .systemFont(ofSize: 14, weight: UIFont.Weight(rawValue: 1))
        label.textColor = UIColor.darkGray
        label.textAlignment = .center
        return label
    }()
    
    private let cellImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 15, y: 10, width: 150, height: 150)
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        contentView.addSubview(cellImageView)
        contentView.addSubview(cellNameLabel)
    }
    
    func setUpContents(image: UIImage, textName: String) {
        cellImageView.image = image
        cellNameLabel.text = textName
    }
}

//class CollectionViewCell: UICollectionViewCell {
//    let imageView: UIImageView
//    let titleName = UILabel()
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    override init(frame: CGRect) {
//        imageView = .init(frame: .zero)
//        super.init(frame: frame)
//        ImageViewSetting()
//    }
//    private func ImageViewSetting() {
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        contentView.addSubview(imageView)
//        NSLayoutConstraint.activate([
//            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
//            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
//            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
//        ])
//    }
//    private func TitleNameSetting() {
//
//    }
//}
