//
//  shopcart.swift
//  0706012110050 - ilham risqi - AFL 1
//
//  Created by ilham risqi on 05/04/23.
//

import Foundation

protocol fungsiKeranjang{
    func tambahBarang (_ item: Simpan)
}

class Shopcart: fungsiKeranjang{
    var listKeranjang: [Simpan] = []
    var totalSemua: Int = 0
    
    init(){}
    init(_ listKeranjang: [Simpan],_ totalSemua: Int) {
        self.listKeranjang = listKeranjang
        self.totalSemua = totalSemua
    }
    
    func tambahBarang(_ item: Simpan) {
        listKeranjang.append(item)
    }
    
    
    
    func totalBayar () -> Int {
        var totalPesanan: Int = 0
        
        for item in listKeranjang {
            totalPesanan += item.banyak * item.harga
        }
        
        return totalPesanan
    }
    
    func cekBarang()->Bool{
        if listKeranjang.isEmpty{
            return true
        }else{
            return false
        }
    }
    
    func showBarang() {
        if listKeranjang.isEmpty{
            print("Your cart is Empty")
            print("")
        }
        
        // pengecekan
        
        var storeKeranjang : [String: [String:Int]] = [:]
        for simpan in listKeranjang {
            if storeKeranjang[simpan.namatoko] == nil {
                storeKeranjang[simpan.namatoko] = [simpan.namamenu: simpan.banyak]
            }
            else if storeKeranjang[simpan.namatoko]![simpan.namamenu] == nil{
                storeKeranjang[simpan.namatoko]![simpan.namamenu] = simpan.banyak
            }
            else{
                storeKeranjang[simpan.namatoko]![simpan.namamenu]! += simpan.banyak
            }
        }
        
        for (nametoko,simpans) in storeKeranjang{
            print()
            print("your order from \(nametoko) : ")
            for(menu , banyak ) in simpans {
                print("- \(menu) x \(banyak)")
            }
        }
        
        print("")
        print("""
                Press [B] to go Back
                Press [P] to pay/checkout
            """)
        print("")
        if let userInputBuy = readLine(), let milih = String?(userInputBuy){
    
            if milih == "B" || milih.lowercased() == "b"{
                
            }
            else if milih == "P" || milih.lowercased() == "p"{
                var tes = true
                repeat{
                    print("Your Total Order : \(totalBayar())")
                    print("Enter the amount of your money : ")
                        
                    if  let enter = readLine(){
                        if let enter = Int(enter){
                            if enter == 0{
                                        print("Payment can't be Zero")
                                        tes = true
                            }
                            else if enter < 0{
                                        print("Please Enter a Valid Amount!!")
                                        tes = true
                            }
                            else if enter < totalBayar(){
                                        print("Please Enter a Valid Amount!!")
                                        tes = true
                
                            }
                            else {
                                
                                // perbayaran
                                print("Your total order: \(totalBayar()) " )
                                print("You pay: \(enter) Change:  \(enter - totalBayar())" )
                                print("")
                                print("Enjoy your meals!")
                                print()
                                listKeranjang.removeAll()
                                tes = false
                                break
            
                            }
                            } else if enter.trimmingCharacters(in: .whitespaces).isEmpty{
                                print("Please Enter Your Payment.")
                                    }
                                                }
                            }while true
            }
        }
    }
}
