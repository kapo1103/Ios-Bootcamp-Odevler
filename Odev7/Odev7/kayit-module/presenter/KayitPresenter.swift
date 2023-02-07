//
//  KayitPresenter.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

class KayitPresenter : ViewToPresenterKayitProtocol {
    var kayitInteractor: PresenterToInteractorKayitProtocol?
    
    func kaydet(name: String) {
        kayitInteractor?.kaydet(name: name)
    }
    
}
