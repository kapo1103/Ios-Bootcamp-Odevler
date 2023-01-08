import UIKit

class Odev {
    
    func soru1(derece:Double) -> Double {
        let donustur = derece * 1.8 + 32
        return donustur
    }
    
    func soru2(uzunKenar:Int,kısaKenar:Int) {
        let dikdortgenCevresi = 2 * (uzunKenar + kısaKenar)
        print("Dikdortgen çevresi:",dikdortgenCevresi)
    }
    
    func soru3(sayi:Int) -> Int {
        var faktoriyel = 1
        var sayac = sayi
        while sayac > 0 {
            faktoriyel = faktoriyel * sayac
            sayac -= 1
        }
        
        return faktoriyel
    }
    
    func soru4(kelime:String) {
        var adet = 0

        for harf in kelime {
            if harf == "a" {
                adet += 1
            }
        }
        print(adet,"Adet a var")
    }
    
    func soru5(kenarSayisi:Int) -> Int {
        let ic = (kenarSayisi - 2) * 180
        return ic
    }
    
    func soru6(gun:Int) -> Int {
        var gunlukMaas = 80
        var maas = 0
        var mesai = 20
        
        //160 saat(20 gün) üzeri mesai ücreti alınır(saati  20 günlük 160)
        if gun <= 20 {
            maas = gunlukMaas * gun

        }
        else if gun > 20 {
            //160 saate kadar düz maaş 1600 80*20
            //gunluk 160tl
            var mesaiGunluk = 160
            var duzMaas = 1600
            var mesaiKacGun = gun - mesai
            
            maas = duzMaas + (mesaiKacGun * mesaiGunluk)
        }
        return maas

    }
    func soru7(kota:Int) -> Int {
        var ustKota = 50
        var ucret = 100

        if kota < ustKota {
            ucret = 100

        }else{
            var extraUcret = (kota - ustKota) * 4
            ucret = ucret + extraUcret
        }
        return ucret
    }
}

let sonuc = Odev()

//soru1
let soru1Sonuc = sonuc.soru1(derece: 20)
print("fahrenhiet:",soru1Sonuc)

//soru2
sonuc.soru2(uzunKenar: 10, kısaKenar: 20)

//soru3
let soru3Sonuc = sonuc.soru3(sayi: 6)
print("Faktoriyel:",soru3Sonuc)

//soru 4
sonuc.soru4(kelime: "Ethem Fatih Hocaoğlu")

//soru5
let icAci = sonuc.soru5(kenarSayisi: 4)
print("İç Açı",icAci)

//soru 6
let soru6Sonuc = sonuc.soru6(gun: 22)
print("Maaş:",soru6Sonuc)

//soru 7
let soru7Soru = sonuc.soru7(kota: 55)
print("Ücret",soru7Soru)
