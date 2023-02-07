//
//  DetayRouter.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

class DetayRouter :PresenterToRouterDetayProtocol {
    static func createModule(ref: DetayViewController) {
        ref.detayPresenterNesnesi = DetayPresenter()
        ref.detayPresenterNesnesi?.detayInteractor = DetayInteractor()
    }
    
}
