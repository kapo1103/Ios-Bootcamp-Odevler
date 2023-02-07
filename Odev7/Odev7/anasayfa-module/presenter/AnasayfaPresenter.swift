//
//  AnasayfaPresenter.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func yapilacaklariYukle() {
        anasayfaInteractor?.yapilacaklariYukle()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func `sil`(id: Int) {
        anasayfaInteractor?.sil(id: id)
    }
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacaklarListesi: [Yapilacaklar]) {
        anasayfaView?.vieweVeriGonder(yapilacaklarListesi: yapilacaklarListesi)
    }
}
