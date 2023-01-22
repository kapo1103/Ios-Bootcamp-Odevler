//
//  ViewController.swift
//  Odev5HesapMakinasi
//
//  Created by Ethem Fatih Hocaoğlu on 21.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var sayi1 = 0
    var sonuc = 0
    var sonSonuc = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func button1(_ sender: Any) {
        metodButton(deger: 1)
    }
    
    @IBAction func button2(_ sender: Any) {
        metodButton(deger: 2)
    }
    
    @IBAction func button3(_ sender: Any) {
        metodButton(deger: 3)
    }
    
    @IBAction func button4(_ sender: Any) {
        metodButton(deger: 4)
    }
    
    @IBAction func button5(_ sender: Any) {
        metodButton(deger: 5)

    }
    
    @IBAction func button6(_ sender: Any) {
        metodButton(deger: 6)

    }
    @IBAction func button7(_ sender: Any) {
        metodButton(deger: 7)

    }
    
    @IBAction func button8(_ sender: Any) {
        metodButton(deger: 8)

    }
    
    @IBAction func button9(_ sender: Any) {
        metodButton(deger: 9)

    }
    
    func metodButton(deger:Int) {
        textField.text! += String(deger)
        sayi1 = Int(textField.text!) ?? 0
    }
    
  
    @IBAction func buttonTopla(_ sender: Any) {
        sonuc = Int(textField.text!) ?? 0
        textField.text! = ""
    }
    
    @IBAction func buttonSonuc(_ sender: Any) {
        sonSonuc = sonuc + sayi1
        textField.text = String(sonSonuc)
    }
    
    @IBAction func buttonSifirla(_ sender: Any) {
        sayi1 = 0
        sonuc = 0
        sonSonuc = 0
        textField.text = ""
    }
}


