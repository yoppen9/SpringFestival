//
//  CollectionReusableView.swift
//  SpringFestival
//
//  Created by 山岸善将 on 2021/11/22.
//

import UIKit

class CollectionReusableView: UICollectionReusableView {
    
    static let identifier = "CollectionReusableView"
    
//    private let image: UIImage = {
//        let image = UIImage(named: "topImage")!
//        let imageView = UIImageView(image: image)
//        return image
//    }()
    func configure() {
        let titleImage: UIImage = UIImage(named: "map&access")!
        let imageView = UIImageView(image: titleImage)
        imageView.frame = CGRect(x: 0, y: 0, width: 428, height: 60)
        addSubview(imageView)
    }
}
