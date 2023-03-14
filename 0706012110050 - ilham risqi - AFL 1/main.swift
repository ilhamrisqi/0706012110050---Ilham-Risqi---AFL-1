//
//  main.swift
//  0706012110050 - ilham risqi - AFL 1
//
//  Created by ilham risqi on 28/02/23.
//

import Foundation

////daftar harga tuku tuku
//let tahuisi : Int
//tahuisi = 3_000
//let nasikuning : Int
//nasikuning = 20_000
//let nasicampur : Int
//nasicampur = 25_000
//let airmineral : Int
//airmineral = 5_000
//
//// daftar harga gotri
//let fruittea : Int
//fruittea = 7_000
//let marimasmangga : Int
//marimasmangga = 5_000
//let marimasjeruk : Int
//marimasjeruk = 5_000
//let tehjus : Int
//tehjus = 3_000
//
////daftar harga madam lie
//let nasiayamg : Int
//nasiayamg = 25_000
//let nasiayamb : Int
//nasiayamb = 30_000
//let indomie : Int
//indomie = 10_000
//let esteh : Int
//esteh = 5_000
//
////dafatar harga kopte
//let kopihitam : Int
//kopihitam = 15_000
//let kopisusu : Int
//kopisusu = 20_000
//let cappuchino : Int
//cappuchino = 25_000
//let susu : Int
//susu = 15_000


//array untuk menyimpan nama toko
var namatoko : [String] = []

namatoko.append("Tuku-Tuku")
namatoko.append("Gotri")
namatoko.append("Madam Lie")
namatoko.append("Kopte")

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




// array untuk menyimpan
// cafe, namamenu, harga, jumlah
var simpantuku : [(String, String, Int, Int)] = []
var simpangotri : [(String, String, Int, Int)] = []
var simpanmadamlie : [(String, String, Int, Int)] = []
var simpankopte : [(String, String, Int, Int)] = []

var simpan = [0,0,0,0]
//untuk menyimpan total
var totalAll = 0

var userInput : String = ""
print("Your Name? ")
userInput = readLine()!

print("User input : \(userInput)")




repeat{
    print("\(userInput), welcome to UC-Walk Cafeteria please choose cafeteria :")
    print("[1] Tuku - Tuku")
    print("[2] Gotri")
    print("[3] Madam Lie")
    print("[4] Kopte")
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
//                            simpan[num-1] += total
                            simpantuku.append((namatoko[0],(TukuTuku[0].0),(TukuTuku[0].1),total))
                            totalAll += total * TukuTuku[0].1
                            print("Thanks you for ordering, Total \(totalAll)")
                            print(simpantuku)
                            
                        }
                        
                    }else if num == "2" {
                        print("Nasi Kuning @\(TukuTuku[1].1)")
                        print("how many Nasi Kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
//                            simpan[num-1] += total
                            simpantuku.append((namatoko[0],(TukuTuku[1].0),(TukuTuku[1].1),total))
                            totalAll += total * TukuTuku[1].1
                            print("Thanks you for ordering, Total \(totalAll)")
                            print(simpantuku)
                        }
                        
                    }else if num == "3" {
                        print("Nasi Campur @\(TukuTuku[2].1)")
                        print("how many Nasi Campur do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpantuku.append((namatoko[0],(TukuTuku[2].0),(TukuTuku[2].1),total))
                            totalAll += total * TukuTuku[2].1
                            print("Thanks you for ordering, Total \(totalAll)")
                            
                        }
                    }else if num == "4" {
                        print("Air Mineral @\(TukuTuku[3].1)")
                        print("how many Air Mineral do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpantuku.append((namatoko[0],(TukuTuku[3].0),(TukuTuku[3].1),total))
                            totalAll += total * TukuTuku[3].1
                            print("Thanks you for ordering, Total \(totalAll)")
                            
                        }
                    }else if num == "B" || num.lowercased() == "b"{
                        break
                    }
                }
            } while true
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
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpangotri.append((namatoko[1],(Gotri[0].0),(Gotri[0].1),total))
                            
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "2" {
                        print("Marimas Mangga @\(Gotri[1].1)")
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpangotri.append((namatoko[1],(Gotri[1].0),(Gotri[1].1),total))
                            
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "3" {
                        print("Marimas Jeruk @\(Gotri[2].1)")
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpangotri.append((namatoko[1],(Gotri[2].0),(Gotri[2].1),total))
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "4" {
                        print("Teh Jus @\(Gotri[3].1)")
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpangotri.append((namatoko[1],(Gotri[3].0),(Gotri[3].1),total))
                            
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "B" || num.lowercased() == "b"{
                        break
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
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpanmadamlie.append((namatoko[2],(MadamLie[0].0),(MadamLie[0].1),total))
                            
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "2" {
                        print("Nasi Ayam Bakar \(MadamLie[1].1)")
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpanmadamlie.append((namatoko[2],(MadamLie[1].0),(MadamLie[1].1),total))
                            
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "3" {
                        print("Indomie \(MadamLie[2].1)")
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpanmadamlie.append((namatoko[2],(MadamLie[2].0),(MadamLie[2].1),total))
                            
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "4" {
                        print("Es teh \(MadamLie[3].1)")
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpanmadamlie.append((namatoko[2],(MadamLie[3].0),(MadamLie[3].1),total))
                            
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "B" || num.lowercased() == "b"{
                        break
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
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpankopte.append((namatoko[3],(Kopte[0].0),(Kopte[0].1),total))
                            
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "2" {
                        print("Kopi Susu \(Kopte[1].1))")
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpankopte.append((namatoko[3],(Kopte[1].0),(Kopte[1].1),total))
                            
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "3" {
                        print("Cappuchino \(Kopte[2].1))")
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpankopte.append((namatoko[3],(Kopte[2].0),(Kopte[2].1),total))
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "4" {
                        print("Susu \(Kopte[3].1))")
                        print("how many nasi kuning do you want to buy?")
                        if let buy = readLine(), let total = Int(buy){
                            simpankopte.append((namatoko[3],(Kopte[3].0),(Kopte[3].1),total))
                            print("Thanks you for ordering \(totalAll)")
                            
                        }
                    }else if num == "B" || num.lowercased() == "b"{
                        break
                    }
                    
                }
            }while true
            
        }else if choose == "S" || choose.lowercased() == "s"{
            
            if simpantuku.isEmpty{
                print("Your Card is Empty")
            }
        
            else if simpantuku.count != 0 {
                print("Your Order from \(simpantuku[0]):")
                print(simpantuku[1], "x" , simpantuku[3])
            }
            
           
        }else if choose == "Q" || choose.lowercased() == "q"{
            break
        }
        
        
    }
    
} while true
