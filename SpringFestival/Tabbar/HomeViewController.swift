//
//  HomeViewController.swift
//  SpringFestival
//
//  Created by 山岸善将 on 2021/11/04.
//

import UIKit

class HomeViewController: UIViewController {
    
    let instagramButton = UIButton()
    let twitterButton = UIButton()
    let facebookButton = UIButton()
    let youtubeButton = UIButton()
    
    let instagramImage = UIImage(named: "instagram")!
    let twitterImage = UIImage(named: "twitter")!
    let facebookImage = UIImage(named: "facebook")!
    let youtubeImage = UIImage(named: "youtube")!
    
    let instagramURL = URL(string: "https://www.instagram.com/springfestivalintokyo/")!
    let twitterURL = URL(string: "https://twitter.com/tokyo_harusai")!
    let facebookURL = URL(string: "https://www.facebook.com/tokyoharusai/")!
    let youtubeURL = URL(string: "https://www.youtube.com/user/tokyoHARUSAI")!
    
    let officialSnsLabel = UILabel()
    
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    
    let mainImageList = ["mask","newspaper","shop","ticket","sheet","cafe_map","megaphone"]
    let mainNameList = ["ガイドライン","ニュース","春祭ストア","公演チケット購入","入場前問診用","春祭カフェ","お知らせ"]
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenWidth = view.frame.size.width
        screenHeight = view.frame.size.height
        
        initImageView()
        ButtomImageView()
        setCollectionView()
        
        officialSnsLabel.text = "OFFICIAL SNS"
        officialSnsLabel.frame = CGRect(x: 139, y: 740, width: 150, height: 30)
        officialSnsLabel.font = .systemFont(ofSize: 17, weight: UIFont.Weight(rawValue: 1))
        officialSnsLabel.textAlignment = NSTextAlignment.center
        view.addSubview(officialSnsLabel)
        
        instagramButton.setImage(instagramImage, for: .normal)
        instagramButton.frame = CGRect(x: (screenWidth / 5) - 25, y: 780, width: 50, height: 50)
        instagramButton.imageView?.contentMode = .scaleAspectFit
        view.addSubview(instagramButton)
        instagramButton.addTarget(self, action: #selector(HomeViewController.instagramButtonTap(_:)), for: .touchUpInside)
        twitterButton.setImage(twitterImage, for: .normal)
        twitterButton.frame = CGRect(x: ((screenWidth / 5) * 2) - 25, y: 780, width: 50, height: 50)
        twitterButton.imageView?.contentMode = .scaleAspectFit
        view.addSubview(twitterButton)
        twitterButton.addTarget(self, action: #selector(HomeViewController.twitterButtonTap(_:)), for: .touchUpInside)
        facebookButton.setImage(facebookImage, for: .normal)
        facebookButton.frame = CGRect(x: ((screenWidth / 5) * 3) - 25, y: 780, width: 50, height: 50)
        facebookButton.imageView?.contentMode = .scaleAspectFit
        view.addSubview(facebookButton)
        facebookButton.addTarget(self, action: #selector(HomeViewController.facebookButtonTap(_:)), for: .touchUpInside)
        youtubeButton.setImage(youtubeImage, for: .normal)
        youtubeButton.frame = CGRect(x: ((screenWidth / 5) * 4) - 25, y: 780, width: 50, height: 50)
        youtubeButton.imageView?.contentMode = .scaleAspectFit
        view.addSubview(youtubeButton)
        youtubeButton.addTarget(self, action: #selector(HomeViewController.youtubeButtonTap(_:)), for: .touchUpInside)
    }
    @objc func instagramButtonTap(_ sender : Any){
        if UIApplication.shared.canOpenURL(instagramURL) {
            UIApplication.shared.open(instagramURL)
        }
    }
    @objc func twitterButtonTap(_ sender : Any){
        if UIApplication.shared.canOpenURL(twitterURL) {
            UIApplication.shared.open(twitterURL)
        }
    }
    @objc func facebookButtonTap(_ sender : Any){
        if UIApplication.shared.canOpenURL(facebookURL) {
            UIApplication.shared.open(facebookURL)
        }
    }
    @objc func youtubeButtonTap(_ sender : Any){
        if UIApplication.shared.canOpenURL(youtubeURL) {
            UIApplication.shared.open(youtubeURL)
        }
    }
    func initImageView() {
        let topImage: UIImage = UIImage(named: "topImage")!
        let imageView = UIImageView(image: topImage)
        let screenWidth:CGFloat = view.frame.size.width
        let imgWidth: CGFloat = topImage.size.width
        let imgHeight: CGFloat = topImage.size.height
        let scale: CGFloat = screenWidth / imgWidth
        let rect:CGRect = CGRect(x:0, y:0, width:imgWidth*scale, height:imgHeight*scale)
        imageView.frame = rect;
        view.addSubview(imageView)
    }
    func ButtomImageView() {
        let bottomImage: UIImage = UIImage(named: "bottomImage")!
        let imageView2 = UIImageView(image: bottomImage)
        let screenWidth:CGFloat = view.frame.size.width
        let imgWidth: CGFloat = bottomImage.size.width
//        let imgHeight: CGFloat = bottomImage.size.height
        let scale: CGFloat = screenWidth / imgWidth
        let rect:CGRect = CGRect(x:0, y:725, width:imgWidth*scale, height:118)
        imageView2.frame = rect;
        view.addSubview(imageView2)
    }
}
extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func setCollectionView() {
        self.collectionView = UICollectionView(frame: CGRect(x: 0, y: 175, width: self.view.frame.size.width, height: 550), collectionViewLayout: UICollectionViewLayout())
        collectionView.backgroundColor = .white
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        collectionView.collectionViewLayout = layout
        self.view.addSubview(collectionView)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        let cellImage = UIImage(named: mainImageList[indexPath.row])!
        let cellText = mainNameList[indexPath.row]
        cell.setUpContents(image: cellImage,textName: cellText)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let newsUrl = URL(string: "https://www.tokyo-harusai.com/news_jp/")!
        let ticketUrl = URL(string: "https://www.tokyo-harusai.com/ticket_general/")!
        let notificationUrl = URL(string: "https://www.tokyo-harusai.com/category/sf_news/?post_type=news_jp")!
//        let url = URL(string: "https://www.tokyo-harusai.com/")!
        if indexPath.row == 0 {
//            if UIApplication.shared.canOpenURL(url) {
//                UIApplication.shared.open(url)
//            }
        } else if indexPath.row == 1 {
            if UIApplication.shared.canOpenURL(newsUrl) {
                UIApplication.shared.open(newsUrl)
            }
        } else if indexPath.row == 2 {
//            if UIApplication.shared.canOpenURL(url) {
//                UIApplication.shared.open(url)
//            }
        } else if indexPath.row == 3 {
            if UIApplication.shared.canOpenURL(ticketUrl) {
                UIApplication.shared.open(ticketUrl)
            }
        } else if indexPath.row == 4 {
//            if UIApplication.shared.canOpenURL(url) {
//                UIApplication.shared.open(url)
//            }
        } else if indexPath.row == 5 {
//            if UIApplication.shared.canOpenURL(url) {
//                UIApplication.shared.open(url)
//            }
        } else if indexPath.row == 6 {
            if UIApplication.shared.canOpenURL(notificationUrl) {
                UIApplication.shared.open(notificationUrl)
            }
        }
    }
}
extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthSize : CGFloat = self.view.bounds.width / 2 - 20
        let heightSize : CGFloat = widthSize * 1.3
        return CGSize(width: widthSize, height: heightSize)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 30, left: 10, bottom: 10, right: 10)
    }
}
