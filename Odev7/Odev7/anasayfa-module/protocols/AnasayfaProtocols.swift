//
//  AnasayfaProtocols.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    
    func yapilacaklariYukle()
    func ara(aramaKelimesi:String)
    func sil(id:Int)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func yapilacaklariYukle()
    func ara(aramaKelimesi:String)
    func sil(id:Int)
}

protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacaklarListesi:[Yapilacaklar])
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(yapilacaklarListesi:[Yapilacaklar])

}

protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:Anasayfa)
}
