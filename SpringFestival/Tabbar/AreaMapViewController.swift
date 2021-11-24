//
//  AreaMapViewController.swift
//  SpringFestival
//
//  Created by 山岸善将 on 2021/10/26.
//

import UIKit

class AreaMapViewController: UIViewController{
    let venueName = ["東京文化会館","東京藝術大学奏楽堂（大学構内）","旧東京音楽学校奏楽堂","上野学園 石橋メモリアルホール","国立科学博物館","東京国立博物館","東京都美術館","国立西洋美術館","上野の森美術館","三井住友銀行 東館 ライジング・スクエア １階 アース・ガーデン"]
    let venueImage = ["venue1","venue2","venue3","venue4","venue5","venue6","venue7","venue8","venue9","venue10"]
    let venueTel = ["📞03-3828-2111","📞050-5525-2013","📞03-3824-1988","📞03-3843-3043","📞050-5541-8600","📞03-5777-8600","📞03-3823-6921","📞03-5777-8600","📞03-3833-4191","📞03-6706-9020"]
    let venueAccess = ["🚆JR上野駅 公園口より徒歩1分","🚆JR上野駅 公園口より徒歩10分\n東京メトロ千代田線 根津駅より徒歩10分","🚆JR上野駅 公園口より徒歩10分","🚆JR上野駅 入谷口より徒歩8分","🚆JR上野駅 公園口より徒歩5分","🚆JR上野駅 公園口より徒歩10分","🚆JR上野駅 公園口より徒歩7分\n東京メトロ銀座線・日比谷線 上野駅7番出口より徒歩10分\n京成電鉄 京成上野駅より徒歩10分","🚆JR上野駅 公園口より徒歩1分","🚆JR上野駅 公園口より徒歩3分","🚆地下鉄「大手町駅」C14出口直結"]
    let venueExplanation = ["ℹ️1961(昭和36年)年4月の開館以来、数多くのオペラ、バレエ、クラシックコンサートが行われています。建物は前川國男設計による代表的なモダニズム構築であり、「音楽の殿堂」として親しまれています。","ℹ️1998（平成10）年、移設された旧奏楽堂の跡地に、コンサートホールとして新しく建設。ホール全体が一つの優れた楽器として考えられ、多様な使用目的に対応した音響空間になっています。フランスのガルニエ社製オルガンが設置され、学内外の音楽家によるオーケストラ、オペラ、合唱、邦楽、室内楽等が催されています。","ℹ️東京藝術大学音楽学部の前身、東京音楽学校の校舎として、1890（明治23）年に建造され、日本における音楽教育の中心的な役割を担ってきました。２階の日本最古の洋式音楽ホールは、かつて瀧兼太郎、山田耕筰、三浦環らが活躍をした由緒ある舞台です。1983（昭和58）年に台東区が譲り受け、移築後、一般公開を開始。1988（昭和63）年には重要文化財の指定を受けています。","ℹ️上野学園（明治37年創立）の講堂として1974（昭和49）年に誕生した旧石橋メモリアルホールが、 2010（平成22 ）年に「上 野学園 石橋メモリアルホール」としてリニューアルオープン。座席数は508席。定評のあった旧ホールの音響はさらに進化し、新世代に続く音響空間が実現しました。音響設計は株式会社永田音響設計事務所が担当。","ℹ️1877（明治10）年創立、日本最大級の総合科学博物館です。「人類と自然の共存をめざして」を総合展示テーマとし、恐竜の化石や大型動物の剥製など自然史の標本や、日本の科学技術に関する資料などを幅広く展示しています。日本館は国指定重要文化財であり、ネオルネサンス様式を基調とした重厚な建物や、柔らかい光が差し込むステンドグラスも見どころです。","ℹ️1872（明治5）年創立、日本で最も長い歴史を持つ博物館として日本を中心に広く東洋諸地域の文化財を収集・保管・展示している。収蔵品の数は11万件を超え、構内には本館、東洋館、平成館、法隆寺宝物館、表慶館、黒田記念館の6つの展示館がある。親しみやすい博物館を目指して、季節や年中行事に合わせた催し、教育普及事業なども行っており、多岐にわたる事業を通して、世界中の人々に愛されています。","ℹ️1926（大正15）年、日本初の公立美術館として開館。国内外の名品を楽しめる特別展や企画展、公募展など、多くの展覧会を開催するほか、アート・コミュニケーション事業など、「アートへの入口」としてさまざまな事業を展開し、「心のゆたかさの拠り所」となる美術館を目指しています。","ℹ️1959（昭和34）年6月、日仏間の国交回復・関係改善の象徴として、ル・コルビュジエの設計により開館。フラ ンス政府から寄贈返還された松方コレクションを基にした、中世末期から20世紀初頭までの作品による常設展に加え、企画展も充実の国立美術館です。2016（平成28）年7月、国立西洋美術館を含む「ル・コルビュジエの建築作品－近代建築運動への顕著な貢献－」が、世界遺産に登録されました。","ℹ️上野公園内にある私立の美術館で、日本美術協会の美術展示館を整備し、1972（昭和47）年に開館しました。以来、所蔵品の公開のほか東京・春・音楽祭のミュージアム・コンサートでもおなじみの「VOCA展」をはじめ、話題となる展覧会を開催しています。",""]
    let siteButton = UIButton()
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initImageView()
        self.view.backgroundColor = .white
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 130, width: view.frame.size.width, height: view.frame.size.height - 220), collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.register(VenueCollectionViewCell.self, forCellWithReuseIdentifier: "Cell2")
        
        collectionView.register(CollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CollectionReusableView.identifier)
        
        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        collectionView.collectionViewLayout = layout
        collectionView.delegate = self
        collectionView.dataSource = self
        self.view.addSubview(collectionView)
    }
    func initImageView() {
        let titleImage: UIImage = UIImage(named: "titleImage")!
        let imageView = UIImageView(image: titleImage)
        let screenWidth:CGFloat = view.frame.size.width
        let imgWidth: CGFloat = titleImage.size.width
        let imgHeight: CGFloat = titleImage.size.height
        let scale: CGFloat = screenWidth / imgWidth
        let rect:CGRect = CGRect(x:0, y:50, width:imgWidth*scale, height:imgHeight*scale)
        imageView.frame = rect;
        view.addSubview(imageView)
    }
}
extension AreaMapViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return venueName.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath) as! VenueCollectionViewCell
        let venueCellText = venueName[indexPath.row]
        let venueCellImage = UIImage(named: venueImage[indexPath.row])!
        let venueCellTell = venueTel[indexPath.row]
        let venueCellAccess = venueAccess[indexPath.row]
        let venueCellExplanation = venueExplanation[indexPath.row]
        cell2.layer.borderColor = UIColor.lightGray.cgColor
        cell2.layer.borderWidth = 1
        cell2.layer.cornerRadius = 10
        cell2.setUpContents(textName: venueCellText, image: venueCellImage, tellNumber: venueCellTell, accessText: venueCellAccess, textExplanation: venueCellExplanation)
        return cell2
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CollectionReusableView.identifier, for: indexPath) as! CollectionReusableView
        
        header.configure()
        return header
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.bounds.width, height: 60)
    }
}
extension AreaMapViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 400, height: 560)
    }
}
