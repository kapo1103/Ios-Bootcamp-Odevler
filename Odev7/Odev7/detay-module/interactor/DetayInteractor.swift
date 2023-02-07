//
//  DetayInteractor.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

class DetayInteractor : PresenterToInteractorDetayProtocol {
    
    let db:FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appending(component: "yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func guncelle(id: Int, name: String) {

        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE toDos SET name = ? WHERE id = ?", values: [name,id])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    
    }
    
}
