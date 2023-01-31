//
//  ViewController.swift
//  DisneyPlusTasarim
//
//  Created by Ethem Fatih Hocaoğlu on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yeniFilmlerCollectionView: UICollectionView!
    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    
    var yeniFilmlerListesi = [YeniFilmler]()
    var filmlerListesi = [Filmler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.barStyle = .black

        addNavBarImage()
        tabBarRenk()
        yeniFilmData()
        filmlerData()
        yeniFilmTasarim()
        filmTasarim()
    
    }

    @IBAction func disneyButton(_ sender: Any) {
        print("disney tıklandı")
    }
    
    @IBAction func pixarButton(_ sender: Any) {
        print("pixar tıklandı")
    }
    
    @IBAction func marvelButton(_ sender: Any) {
        print("marvel tıklandı")
    }
    
    @IBAction func starWarsButton(_ sender: Any) {
        print("starwars tıklandı")
    }
    
    @IBAction func ngButton(_ sender: Any) {
        print("national geographic tıklandı")
    }
    
    func filmlerData() {
        let a1 = Filmler(resimAdi: "extraordinary")
        let a2 = Filmler(resimAdi: "bursabulbulu")
        let a3 = Filmler(resimAdi: "badbatch")
        let a4 = Filmler(resimAdi: "buyukhazine")
        let a5 = Filmler(resimAdi: "war")
        let a6 = Filmler(resimAdi: "lepu")
        let a7 = Filmler(resimAdi: "legacy")
        let a8 = Filmler(resimAdi: "kirmizi")
        let a9 = Filmler(resimAdi: "darby")
        let a10 = Filmler(resimAdi: "chippe")
        let a11 = Filmler(resimAdi: "celal")

        filmlerListesi.append(a1)
        filmlerListesi.append(a2)
        filmlerListesi.append(a3)
        filmlerListesi.append(a4)
        filmlerListesi.append(a5)
        filmlerListesi.append(a6)
        filmlerListesi.append(a7)
        filmlerListesi.append(a8)
        filmlerListesi.append(a9)
        filmlerListesi.append(a10)
        filmlerListesi.append(a11)

        filmlerCollectionView.delegate = self
        filmlerCollectionView.dataSource = self
    }
    func filmTasarim () {
        
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        tasarim.itemSize = CGSize(width: 330 , height: 180)
        filmlerCollectionView.collectionViewLayout = tasarim
    }
    
    func yeniFilmData() {

        let f1 = YeniFilmler(resimAd: "extraordinary")
        let f2 = YeniFilmler(resimAd: "bursabulbulu")
        let f3 = YeniFilmler(resimAd: "badbatch")
        let f4 = YeniFilmler(resimAd: "buyukhazine")
        let f5 = YeniFilmler(resimAd: "willow")
        let f6 = YeniFilmler(resimAd: "soygun")
        let f7 = YeniFilmler(resimAd: "oldur")
        let f8 = YeniFilmler(resimAd: "narkotik")
        let f9 = YeniFilmler(resimAd: "araba")

        yeniFilmlerListesi.append(f1)
        yeniFilmlerListesi.append(f2)
        yeniFilmlerListesi.append(f3)
        yeniFilmlerListesi.append(f4)
        yeniFilmlerListesi.append(f5)
        yeniFilmlerListesi.append(f6)
        yeniFilmlerListesi.append(f7)
        yeniFilmlerListesi.append(f8)
        yeniFilmlerListesi.append(f9)
        
        yeniFilmlerCollectionView.delegate = self
        yeniFilmlerCollectionView.dataSource = self
    }
    
    func yeniFilmTasarim () {
        
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        tasarim.itemSize = CGSize(width: 110 , height: 150)
        yeniFilmlerCollectionView.collectionViewLayout = tasarim
    }
    
    func addNavBarImage() {
        
            let navController = navigationController!
            let image = UIImage(named: "disney+logo")
            let imageView = UIImageView(image: image)
            let bannerWidth = navController.navigationBar.frame.size.width
            let bannerHeight = navController.navigationBar.frame.size.height
            let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
            let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
            imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
            imageView.contentMode = .scaleAspectFit
            navigationItem.titleView = imageView
        }

    func tabBarRenk () {
        let appearance = UITabBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "tabbarArkaplan")
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance

    }
}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == filmlerCollectionView {
            return filmlerListesi.count
        }
        return yeniFilmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == yeniFilmlerCollectionView {
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "yeniHucre",for: indexPath) as!
            YeniCollectionViewCell
            
            let yeniFilm = yeniFilmlerListesi[indexPath.row]
            hucre.imageView.image = UIImage(named: yeniFilm.resimAd!)
            
            hucre.layer.cornerRadius = 10.0
            
            
            return hucre
        }
        
        
        else {
            let hucre2 = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre",for: indexPath) as!
            FilmlerCollectionViewCell
            
            let film = filmlerListesi[indexPath.row]
            hucre2.filmlerImageView.image = UIImage(named: film.resimAdi!)
            hucre2.layer.cornerRadius = 10.0

            return hucre2
        }
    }
}
