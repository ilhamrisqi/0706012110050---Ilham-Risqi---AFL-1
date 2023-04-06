//
//  toko.swift
//  0706012110050 - ilham risqi - AFL 1
//
//  Created by ilham risqi on 05/04/23.
//

import Foundation

class Toko {
    let name : String
    let menus : [Menu]
    

    
    
    init(name: String, menus: [Menu]) {
        self.name = name
        self.menus = menus
    }
    
    func printMenu(){
        for (i,namacafe) in self.menus.enumerated(){
            print("[\(i+1)] \(namacafe.namamenu) - Rp. \(namacafe.harga)")
        }
        print("[B]ack to Menu")
        
    }
    
    func pesanMenu() {
        printMenu()
        print("your menu choose : ")
        let input = readLine()
        if let nomorMenu = Int(input ?? "0") {
                if nomorMenu < 1 || nomorMenu > menus.count {
                    print("Menu tidak tersedia")
                } else {
                    let menuTerpilih = menus[nomorMenu - 1]
                    var namaToko = menuTerpilih.namatoko
                    var namaMenu = menuTerpilih.namamenu
                    var hargaa = menuTerpilih.harga
                    print("Anda memesan \(menuTerpilih.namamenu) seharga \(menuTerpilih.harga)")
                    print("how many \(namaMenu) do you want to buy?")
                    if let buy = readLine(), let total = Int(buy){
                        shop.tambahBarang(Simpan(namatoko: namaToko, namamenu: namaMenu, harga: hargaa, banyak: Int(total)))
                        print("Thanks you for ordering")
                        print("")
                    }
                }
        } else if input?.lowercased() == "b" || input == "B"{
                DisplayMenu()
                print("Kembali ke menu utama")
            } else {
                print("Input tidak valid")
            }
        }
    
}



