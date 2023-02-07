//
//  DetayViewController.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import UIKit

class DetayViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    
    var yapilacak:Yapilacaklar?
    
    var detayPresenterNesnesi:ViewToPresenterDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DetayRouter.createModule(ref: self)
        
        if let n = yapilacak {
            tfName.text = n.name
        }
    }
    

    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let y = tfName.text, let ya = yapilacak {
            detayPresenterNesnesi?.guncelle(id: ya.id!, name: y)
        }
    }
    
}
