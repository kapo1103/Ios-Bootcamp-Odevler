//
//  KayitProtocols.swift
//  Odev7
//
//  Created by Ethem Fatih Hocaoğlu on 6.02.2023.
//

import Foundation

protocol ViewToPresenterKayitProtocol {
    var kayitInteractor:PresenterToInteractorKayitProtocol? {get set}
    
    func kaydet(name:String)
}

protocol PresenterToInteractorKayitProtocol {
    func kaydet(name:String)
}

protocol PresenterToRouterKayitProtocol {
    static func create(ref: KayitViewController)
}
