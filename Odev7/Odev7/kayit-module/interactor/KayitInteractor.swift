//
//  KayitInteractor.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

class KayitInteractor : PresenterToInteractorKayitProtocol {
    
    let db:FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appending(component: "yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func kaydet(name: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO toDos (name) VALUES (?)", values: [name])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
