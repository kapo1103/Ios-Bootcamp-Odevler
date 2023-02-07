//
//  AnasayfaInteractor.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

class AnasayfaInteractor  : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db:FMDatabase?
    
    init() {
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appending(component: "yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func yapilacaklariYukle() {
        var liste = [Yapilacaklar]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM toDos", values: nil)
            
            while rs.next() {
                let id = Int(rs.string(forColumn: "id"))!
                let name = rs.string(forColumn: "name")!
                
                let yapilacak = Yapilacaklar(id: id, name: name)
                liste.append(yapilacak)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)

        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()

    }
    
    func ara(aramaKelimesi: String) {
        var liste = [Yapilacaklar]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM toDos WHERE name like ?", values: ["%\(aramaKelimesi)%"])
            
            while rs.next() {
                let id = Int(rs.string(forColumn: "id"))!
                let name = rs.string(forColumn: "name")!
                
                let yapilacak = Yapilacaklar(id: id, name: name)
                liste.append(yapilacak)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)

        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func `sil`(id: Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM toDos WHERE id = ?", values: [id])
            yapilacaklariYukle()
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
