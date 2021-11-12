//
//  ViewController.swift
//  SpringFestival
//
//  Created by 山岸善将 on 2021/10/11.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//    }
//}
//extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return mainImageList.count
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
//        let mainImage = cell.contentView.viewWithTag(1) as! UIImageView
//        mainImage.image = UIImage(named: mainImageList[indexPath.row])
//        let mainName = cell.contentView.viewWithTag(2) as! UILabel
//        mainName.text = mainNameList[indexPath.row]
//
//        cell.layer.cornerRadius = 12
//        cell.layer.masksToBounds = false
//
//        return cell
//    }
//
//}
//extension ViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let horizontalSpace : CGFloat = 20
//        let widthSize : CGFloat = self.view.bounds.width / 2 - horizontalSpace
//        let heightSize : CGFloat = widthSize * 1.3
//        return CGSize(width: widthSize, height: heightSize)
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 30, left: 10, bottom: 10, right: 10)
//    }
//}
//extension UITabBar {
//    override open func sizeThatFits(_ size: CGSize) -> CGSize {
//        var sizeThatFits = super.sizeThatFits(size)
//        sizeThatFits.height = 150
//        return sizeThatFits;
//    }
//}
