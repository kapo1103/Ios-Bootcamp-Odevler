//
//  KayitViewController.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import UIKit

class KayitViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    
    var kayitPresenterNesnesi:ViewToPresenterKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        KayitRouter.create(ref: self)
       
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let n = tfName.text {
            kayitPresenterNesnesi?.kaydet(name: n)
        }
    }
    
}
