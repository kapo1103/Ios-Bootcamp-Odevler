//
//  ViewController.swift
//  OdevTasarim
//
//  Created by Ethem Fatih Hocaoğlu on 15.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "OrdanBurdan Butik"
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk1")
        appearance.titleTextAttributes = [.foregroundColor:UIColor(named: "yaziRenk1")!,
                                          .font:UIFont(name: "Pacifico-Regular", size: 22)! ]
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }


}

