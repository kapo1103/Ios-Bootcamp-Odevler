//
//  DetayPresenter.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

class DetayPresenter : ViewToPresenterDetayProtocol {
    var detayInteractor: PresenterToInteractorDetayProtocol?
    
    func guncelle(id: Int, name: String) {
        detayInteractor?.guncelle(id: id, name: name)
    }
}
