//
//  AnasayfaRouter.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

class AnasayfaRouter {
    static func createModule(ref:Anasayfa) {
        let presenter = AnasayfaPresenter()
        
        ref.anasayfaPresenternesnesi = presenter
        ref.anasayfaPresenternesnesi?.anasayfaInteractor = AnasayfaInteractor()
        ref.anasayfaPresenternesnesi?.anasayfaView = ref
        ref.anasayfaPresenternesnesi?.anasayfaInteractor?.anasayfaPresenter = presenter
    }
}
