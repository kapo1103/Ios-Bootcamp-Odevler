//
//  KayitRouter.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

class KayitRouter : PresenterToRouterKayitProtocol {
    static func create(ref: KayitViewController) {
        ref.kayitPresenterNesnesi = KayitPresenter()
        ref.kayitPresenterNesnesi?.kayitInteractor = KayitInteractor()
    }
    
}
