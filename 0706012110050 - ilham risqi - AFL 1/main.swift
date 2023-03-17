//
//  main.swift
//  0706012110050 - ilham risqi - AFL 1
//
//  Created by ilham risqi on 28/02/23.
//

import Foundation



//array untuk menyimpan nama toko
var namatoko : [String] = []

namatoko.append("Tuku-Tuku")
namatoko.append("Gotri")
namatoko.append("Madam Lie")
namatoko.append("Kopte")
namatoko.append("Gisoe")

//Array untuk menyimpan nama makanan dan harga
var TukuTuku : [(String,Int)] = []
TukuTuku.append((String,Int)("Tahu Isi",3000))
TukuTuku.append((String,Int)("Nasi Kuning",20000))
TukuTuku.append((String,Int)("Nasi Campur",25000))
TukuTuku.append((String,Int)("Air Mineral",5000))

var Gotri : [(String,Int)] = []
Gotri.append((String,Int)("Fruit Tea",7000))
Gotri.append((String,Int)("Marimas Mangga",5000))
Gotri.append((String,Int)("Marimas Jeruk",5000))
Gotri.append((String,Int)("Teh Jus",3000))

var MadamLie : [(String,Int)] = []
MadamLie.append((String,Int)("Nasi Ayam Goreng",25000))
MadamLie.append((String,Int)("Nasi Ayam Bakar",30000))
MadamLie.append((String,Int)("Indomie",10000))
MadamLie.append((String,Int)("Es eh",5000))

var Kopte : [(String,Int)] = []
Kopte.append((String,Int)("Kopi Hitam",15000))
Kopte.append((String,Int)("Kopi Susu",20000))
Kopte.append((String,Int)("Cappuchino",20000))
Kopte.append((String,Int)("Susu",15000))


var Gisoe : [(String,Int)] = []
Gisoe.append((String,Int)("Americano",15000))
Gisoe.append((String,Int)("Exspreso",20000))
Gisoe.append((String,Int)("Jahe",10000))
Gisoe.append((String,Int)("Susu Jahe",15000))



// array untuk menyimpan
// cafe, namamenu, harga, jumlah

typealias simpan = (namaToko: String, menuToko: String, harga: Int, banyak:Int)
var cartList : [simpan] = []

//untuk menyimpan totalSemua
var totalAll = 0

var userInput : String = ""
print("Your Name? ")
userInput = readLine()!


repeat {
    print("\(userInput), welcome to UC-Walk Cafeteria please choose cafeteria :")
    print("[1] Tuku - Tuku")
    print("[2] Gotri")
    print("[3] Madam Lie")
    print("[4] Kopte")
    print("[5] Gisoe")
    print("-")
    print("[S] Shopping Cart")
    print("[Q] Quit")
    print("Your cafeteria choose")
    
    
    if let choose = readLine(), let option = String?(choose){
        
        
        if option == "1" {
            
            repeat{
                print("Hi, Welcome back to Tuku - Tuku!  What would you like to order")
                print("[1] Tahu isi")
                print("[2] Nasi Kuning")
                print("[3] Nasi Campur")
                print("[4] Air Mineral")
                print("-")
                print("[B]ack to Menu")
                print("your menu choose : ")
                
                if let pilih = readLine(), let num = String?(pilih){
                    if num == "1"{
                        
                        print("Tahu Isi @\(TukuTuku[0].1)")
                        print("how many Tahu Isi do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[0],(TukuTuku[0].0),(TukuTuku[0].1),total)
                            cartList.append(tryData)
                            
                            
                           print("Thanks you for ordering")
                            
                        }
                        
                    }else if num == "2" {
                        print("Nasi Kuning @\(TukuTuku[1].1)")
                        print("how many Nasi Kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[0],(TukuTuku[1].0),(TukuTuku[1].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                        }
                        
                    }else if num == "3" {
                        print("Nasi Campur @\(TukuTuku[2].1)")
                        print("how many Nasi Campur do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[0],(TukuTuku[2].0),(TukuTuku[2].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                    
                            
                        }
                    }else if num == "4" {
                        print("Air Mineral @\(TukuTuku[3].1)")
                        print("how many Air Mineral do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[0],(TukuTuku[3].0),(TukuTuku[3].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                            
                        }
                    }else if num == "B" || num.lowercased() == "b"{
                        break
                    }else{
                        print()
                        print("press no 1 - 4 & B")
                        print()
                    }
                }
            } while (true)
        }else if option == "2" {
            
            repeat {
                print("Hi, Welcome back to Gotri!  What would you like to order")
                print("[1] Fruit Tea")
                print("[2] Marimas Mangga")
                print("[3] Marimas Jeruk")
                print("[4] Teh jus")
                print("-")
                print("[B]ack to Menu")
                print("your menu choose : ")
                
                if let pilih = readLine(), let num = String?(pilih){
                    if num == "1"{
                        
                        print("Fruit Tea @\(Gotri[0].1)")
                        print("how many Fruit Tea do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[1],(Gotri[0].0),(Gotri[0].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                          
                        }
                    }else if num == "2" {
                        print("Marimas Mangga @\(Gotri[1].1)")
                        print("how many Marimas Mangga do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[1],(Gotri[1].0),(Gotri[1].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                        
                        }
                    }else if num == "3" {
                        print("Marimas Jeruk @\(Gotri[2].1)")
                        print("how many Marimas Jeruk do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[1],(Gotri[2].0),(Gotri[2].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                            
                        }
                    }else if num == "4" {
                        print("Teh Jus @\(Gotri[3].1)")
                        print("how many Teh Jus do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[1],(Gotri[3].0),(Gotri[3].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                           
                        }
                    }else if num == "B" || num.lowercased() == "b"{
                        break
                    }else{
                        print()
                        print("press no 1 - 4 & B")
                        print()
                    }
                    
                }
            }while true
            
            
        }else if option == "3"{
            
            repeat{
                print("Hi, Welcome back to Madam Lie!  What would you like to order")
                print("[1] Nasi Ayam Goreng")
                print("[2] Nasi Ayam Bakar")
                print("[3] Indomie")
                print("[4] Es Teh")
                print("-")
                print("[B]ack to Menu")
                print("your menu choose : ")
                
                if let pilih = readLine(), let num = String?(pilih){
                    if num == "1"{
                        
                        print("Nasi Ayam Goreng \(MadamLie[0].1)")
                        print("how many Nasi Ayam Goreng do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[2],(MadamLie[0].0),(MadamLie[0].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                           
                            
                        }
                    }else if num == "2" {
                        print("Nasi Ayam Bakar \(MadamLie[1].1)")
                        print("how many Nasi Ayam Bakar do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[2],(MadamLie[1].0),(MadamLie[1].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                            
                            
                        }
                    }else if num == "3" {
                        print("Indomie \(MadamLie[2].1)")
                        print("how many Indomie do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[2],(MadamLie[2].0),(MadamLie[2].1),total)
                                cartList.append(tryData)
                           print("Thanks you for ordering")
                            
                        }
                    }else if num == "4" {
                        print("Es teh \(MadamLie[3].1)")
                        print("how many Es teh do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[2],(MadamLie[3].0),(MadamLie[3].1),total)
                                cartList.append(tryData)
                             print("Thanks you for ordering")
                            
                        }
                    }else if num == "B" || num.lowercased() == "b"{
                        break
                    }else{
                        print()
                        print("press no 1 - 4 & B")
                        print()
                    }
                    
                }
            }while true
            
        }else if option == "4"{
            
            repeat{
                print("Hi, Welcome back to Kopte!  What would you like to order")
                print("[1] Kopi Hitam")
                print("[2] Kopi Susu")
                print("[3] Cappuchino")
                print("[4] Susu")
                print("-")
                print("[B]ack to Menu")
                print("your menu choose : ")
                
                if let pilih = readLine(), let num = String?(pilih){
                    if num == "1"{
                        
                        print("Kopi Hitam \(Kopte[0].1)")
                        print("how many Kopi Hitam do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[3],(Kopte[0].0),(Kopte[0].1),total)
                                cartList.append(tryData)
                            print("Thanks you for ordering")
                            
                        }
                    }else if num == "2" {
                        print("Kopi Susu \(Kopte[1].1)")
                        print("how many Kopi Susu do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[3],(Kopte[1].0),(Kopte[1].1),total)
                                cartList.append(tryData)
                            print("Thanks you for ordering")
                            
                        }
                    }else if num == "3" {
                        print("Cappuchino \(Kopte[2].1)")
                        print("how many Cappuchino do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[3],(Kopte[2].0),(Kopte[2].1),total)
                                cartList.append(tryData)
                            print("Thanks you for ordering")
                            
                        }
                    }else if num == "4" {
                        print("Susu \(Kopte[3].1)")
                        print("how many Susu do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            let tryData : simpan = (namatoko[3],(Kopte[3].0),(Kopte[3].1),total)
                                cartList.append(tryData)
                            print("Thanks you for ordering")
                            
                        }
                    }else if num == "B" || num.lowercased() == "b"{
                        break
                    }else{
                        print()
                        print("press no 1 - 4 & B")
                        print()
                    }
                    
                }
            }while true
            
        } else if option == "5"{
            repeat {
            print("Hi, Welcome back to Gisoe!  What would you like to order")
            print("[1] Americano")
            print("[2] Exspreso")
            print("[3] Jahe")
            print("[4] Susu Jahe")
            print("-")
            print("[B]ack to Menu")
            print("your menu choose : ")
            
            if let pilih = readLine(), let num = String?(pilih){
                if num == "1"{
                    
                    print("Americano @\(Gisoe[0].1)")
                    print("how many Americano do you want to buy?")
                    if let buy = readLine(), let total = Int(buy){
                    let tryData : simpan = (namatoko[4],(Gisoe[0].0),(Gisoe[0].1),total)
                        cartList.append(tryData)
                        
                        
                        
                    }
                }else if num == "2" {
                    print("Exspreso @\(Gisoe[1].1)")
                    print("how many Exspreso do you want to buy?")
                    if let buy = readLine(), let total = Int(buy){
                        let tryData : simpan = (namatoko[4],(Gisoe[1].0),(Gisoe[1].1),total)
                        cartList.append(tryData)
                        
                        
                    }
                }else if num == "3" {
                    print("Jahe @\(Gisoe[2].1)")
                    print("how many Jahe do you want to buy?")
                    if let buy = readLine(), let total = Int(buy){
                        let tryData : simpan = (namatoko[4],(Gisoe[2].0),(Gisoe[2].1),total)
                        cartList.append(tryData)
                        
                        
                    }
                }else if num == "4" {
                    print("Susu Jahe @\(Gisoe[3].1)")
                    print("how many Susu Jahe do you want to buy?")
                    if let buy = readLine(), let total = Int(buy){
                        let tryData : simpan = (namatoko[4],(Gisoe[3].0),(Gisoe[3].1),total)
                        cartList.append(tryData)
                    
                    }
                }else if num == "B" || num.lowercased() == "b"{
                    break
                }else{
                    print()
                    print("press no 1 - 4 & B")
                    print()
                }
                
            }
        }while true
            
        }else if choose == "S" || choose.lowercased() == "s"{
            repeat{
                if cartList.isEmpty{
                    print("Your Card is Empty")
                }
                
                else if cartList.count != 0 {
                    
                    print()
                    
                    // pengcekan
                    var currentStoreName = ""
                    var storeItems = [String: Int]()
                    for item in cartList {
                        if item.namaToko != currentStoreName {
                            if !storeItems.isEmpty {
                                print("Your order in \(currentStoreName):")
                                for (namamenu, jumlahitem) in storeItems {
                                    print(" - \(namamenu) X \(jumlahitem)")
                                }
                                storeItems.removeAll()
                            }
                            currentStoreName = item.namaToko
                        }
                        storeItems[item.menuToko, default: 0] += item.banyak
                    }

                    if !storeItems.isEmpty {
                        print("Your order in \(currentStoreName):")
                        for (productName, itemCount) in storeItems {
                            print(" - \(productName) X \(itemCount)")
                        }
                    }

                    print("""
                          Press [B] to go Back
                          Press [P] to pay/checkout
                          """)
                    if let userInputBuy = readLine(), let milih = String?(userInputBuy){
                        
                        //jumlah keseluruhan item yang di beli
                        for i in 0..<cartList.count{
                            totalAll += Int(cartList[i].harga * cartList[i].banyak)
                            
                        }
                        
                        if milih == "B" || milih.lowercased() == "b" {
                            break
                        }else if milih == "P" || milih.lowercased() == "p"{
                            
                            repeat{
                                print("Your Total Order : \(totalAll)")
                                print("Enter the amount of your money : ")
                                if  let enter = readLine(){
                                    if let enter = Int(enter){
                                        if enter == 0{
                                            print("Payment can't be Zero")
                                        }else if enter < 0{
                                            print("Please Enter a Valid Amount!!")
                                        }else if enter < totalAll{
                                            print("Please Enter a Valid Amount!!")
                                        }
                                        else {
                                            // perbayaran
                                            print("Your total order: \(totalAll) " )
                                            print("You pay: \(enter) Change:  \(enter - totalAll)" )
                                            print("")
                                            print("Enjoy your meals!")
                                            cartList.removeAll()
                                            exit(0)
                                        
                                            
                                        }
                                    } else if enter.trimmingCharacters(in: .whitespaces).isEmpty{
                                        print("Please Enter Your Payment.")
                                    }
                                }
                            }while true
                        }
                    }
                    
                }
                
            }while true
        }else if choose == "Q" || choose.lowercased() == "q"{
            break
        }else{
            print()
            print("press no 1 - 5, S and Q")
            print()
        }
    }
} while true




