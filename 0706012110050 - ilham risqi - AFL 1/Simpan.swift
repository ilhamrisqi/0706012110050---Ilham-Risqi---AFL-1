//
//  simpan.swift
//  0706012110050 - ilham risqi - AFL 1
//
//  Created by ilham risqi on 03/04/23.
//

import Foundation


class Simpan: Menu {
    var banyak : Int

    init(namatoko: String, namamenu: String, harga: Int, banyak: Int) {
        self.banyak = banyak
        super.init(namatoko: namatoko, namamenu: namamenu, harga: harga)
       
    }
}



