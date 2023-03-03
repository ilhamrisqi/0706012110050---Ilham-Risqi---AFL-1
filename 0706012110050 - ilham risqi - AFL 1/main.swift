//
//  main.swift
//  0706012110050 - ilham risqi - AFL 1
//
//  Created by ilham risqi on 28/02/23.
//

import Foundation

print("Hello, World!")

var userInput : String = ""
print("Your Name? ")
userInput = readLine()!

print("User input : \(userInput)")



 
    
    
    print("\(userInput), welcome to UC-Walk Cafeteria please choose cafeteria :")
    print("[1] Tuku - Tuku")
    print("[2] Gotri")
    print("[3] Madam Lie")
    print("[4] Kopte")
    print("-")
    print("[S] Shopping Cart")
    print("[Q] Quit")
    print("Your cafeteria choose")
    
    
    if let choose = readLine(), let option = Int(choose){
        
        if option == 1 {
            print("Hi, Welcome back to Tuku - Tuku!  What would you like to order")
            print("[1] Tahu isi")
            print("[2] Nasi Kuning")
            print("[3] Nasi Campur")
            print("[4] Air Mineral")
            print("-")
            print("[B]ack to Menu")
            print("your menu choose : ")
            
            if let pilih = readLine(), let num = Int(pilih){
                if num == 1{
                    print("Tahu isi @ 5.000")
                    print("how many nasi kuning do you want to buy?")
                    let buy = readLine()
                    print("Thanks you for ordering")
                }
            }
        }else if option == 2 {
            print("hehe")
        }else if option == 3 {
            print("hihi")
        }else if option == 4 {
            print("hoho")
        }else{
            exit(1)
        }
        
        
    }
    
    

