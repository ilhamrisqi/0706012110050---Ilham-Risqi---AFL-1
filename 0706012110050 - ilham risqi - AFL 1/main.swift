//
//  main.swift
//  0706012110050 - ilham risqi - AFL 1
//
//  Created by ilham risqi on 28/02/23.
//

import Foundation





let TukuTuku =
Toko(name: "Tuku Tuku",
menus: [
    Menu(namatoko: "Tuku - Tuku", namamenu: "Tahu Isi", harga: 3000),
    Menu(namatoko: "Tuku - Tuku", namamenu: "Nasi Kuning", harga: 20000),
    Menu(namatoko: "Tuku - Tuku", namamenu: "Nasi Campur", harga: 25000),
    Menu(namatoko: "Tuku - Tuku", namamenu: "Air Mineral", harga: 5000)
        ]
)


let Gotri =
Toko(name: "Gotri",
menus: [
    Menu(namatoko: "Gotri", namamenu: "Fruit Tea", harga: 7000),
    Menu(namatoko: "Gotri", namamenu: "Marimas Mangga", harga: 5000),
    Menu(namatoko: "Gotri", namamenu: "Marimas Jeruk", harga: 5000),
    Menu(namatoko: "Gotri", namamenu: "Teh Jus", harga: 3000)
    ]
)


let MadamLie =
Toko(name: "Madam Lie",
menus: [
    Menu(namatoko: "Madam Lie", namamenu: "Nasi Ayam Goreng", harga: 25000),
    Menu(namatoko: "Madam Lie", namamenu: "Nasi Ayam Bakar", harga: 30000),
    Menu(namatoko: "Madam Lie", namamenu: "Indomie", harga: 10000),
    Menu(namatoko: "Madam Lie", namamenu: "Es Teh", harga: 5000)
    ]
)


let Kopte =
Toko(name: "Kopte",
menus: [
    Menu(namatoko: "Kopte", namamenu: "Kopi Hitam", harga: 15000),
    Menu(namatoko: "Kopte", namamenu: "Kopi Susu", harga: 20000),
    Menu(namatoko: "Kopte", namamenu: "Cappuchino", harga: 20000),
    Menu(namatoko: "Kopte", namamenu: "Susu", harga: 15000)
    ]
)


let Gisoe =
Toko(name: "Gisoe",
menus: [
    Menu(namatoko: "Gisoe", namamenu: "Americano", harga: 15000),
    Menu(namatoko: "Gisoe", namamenu: "Exspreso", harga:20000),
    Menu(namatoko: "Gisoe", namamenu: "Jahe", harga: 10000),
    Menu(namatoko: "Gisoe", namamenu: "Susu Jahe", harga: 15000)
    ]
)


//var tuku = Toko(name: "Tuku", menus: TukuTuku1)

var tuku = TukuTuku
var gotri = Gotri
var madam = MadamLie
var kopte = Kopte
var gisoe = Gisoe
var shop = Shopcart()
var loop = true


repeat{
DisplayMenu()
let choose = readLine()


    if let option = choose, let choice = Int(option) {
        switch choice {
        case 1:
            tuku.pesanMenu()
            print()
        case 2:
            gotri.pesanMenu()
            print()
        case 3:
            madam.pesanMenu()
            print()
        case 4:
            kopte.pesanMenu()
            print()
        case 5:
            gisoe.pesanMenu()
            print()
        default:
            print("Invalid option")
        }
        loop; false
    } else if let option = choose?.lowercased(), option == "s" || option == "S" {
        shop.showBarang()
        print()
    } else if let option = choose?.lowercased(), option == "q" || option == "Q" {
        exit(1)
    }else{
        print("Invalid input")
    }
}while loop









