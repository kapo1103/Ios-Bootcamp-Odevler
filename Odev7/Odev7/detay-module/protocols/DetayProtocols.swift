//
//  DetayProtocols.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

protocol PresenterToInteractorDetayProtocol {
    func guncelle(id:Int , name:String)
}

protocol ViewToPresenterDetayProtocol {
    var detayInteractor:PresenterToInteractorDetayProtocol? {get set}
    
    func guncelle(id:Int , name:String)
}

protocol PresenterToRouterDetayProtocol {
    static func createModule(ref:DetayViewController)
}
