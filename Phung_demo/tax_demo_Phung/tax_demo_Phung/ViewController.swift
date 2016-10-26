//
//  ViewController.swift
//  tax_demo_Phung
//
//  Created by Phung on 10/26/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit

struct Product {
    
    var name: String
    
    var price: Double
    
    var tax : Double
    
    var taximport : Double
    
    init(name: String, price: Double, tax: Double, taximport: Double) {
        
        self.name = name
        
        self.price = price
        
        self.tax = tax

        self.taximport = taximport

    }
    
}

class ViewController: UIViewController {

    var arOrder1: [Product] = []
    var arOrder2: [Product] = []
    var arOrder3: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arOrder1 = [
            Product(name: "book", price: 12.49, tax: 0, taximport: 0),
            Product(name: "music cd", price: 14.99, tax: 1.499, taximport: 0),
            Product(name: "chocolate bar", price: 0.85, tax: 0, taximport: 0)]
            
        arOrder2 = [
            Product(name: "imported box of chocolates", price: 10, tax: 0, taximport: 0.5),
            Product(name: "imported bottle of perfume", price: 47.5, tax: 4.75, taximport: 2.375)]
            
        arOrder3  = [
            Product(name: "imported bottle of perfume", price: 27.99, tax: 2.799, taximport: 1.399),
            Product(name: "bottle of perfume", price: 18.99, tax: 1.899, taximport: 0),
            Product(name: "packet of headache pills", price: 9.75, tax: 0, taximport: 0),
            Product(name: "imported box of chocolates", price: 11.25, tax: 0, taximport: 0.5625)]
            
            
        
        
        
        print("-----Output order 1--------------------")
        var saletax1 = 0.0
        var total1 = 0.0
        for i in 0..<arOrder1.count {
            let price = arOrder1[i].price + arOrder1[i].tax + arOrder1[i].taximport
            total1 += price
            let tax = arOrder1[i].tax + arOrder1[i].taximport
            saletax1 += tax
            print("\(arOrder1[i].name),\(price)")
            //print("Sales Taxes: \(saletax1)")
        }
        print("Sales Taxes: \(saletax1)")
        print("Total:  \(total1)")
        
        
        
        
        
        print("-----Output order 2--------------------")
        var saletax2 = 0.0
        var total2 = 0.0
        for i in 0..<arOrder2.count {
            let price = arOrder2[i].price + arOrder2[i].tax + arOrder2[i].taximport
            total2 += price
            let tax = arOrder2[i].tax + arOrder2[i].taximport
            saletax2 += tax
            print("\(arOrder2[i].name),\(price)")
            
        }
        print("Sales Taxes: \(saletax2)")
        print("Total:  \(total2)")

        
        print("-----Output order 3--------------------")
        var saletax3 = 0.0
        var total3 = 0.0
        for i in 0..<arOrder3.count {
            let price = arOrder3[i].price + arOrder3[i].tax + arOrder3[i].taximport
            total3 += price
            let tax = arOrder3[i].tax + arOrder3[i].taximport
            saletax3 += tax
            print("\(arOrder3[i].name),\(price)")
            //print("Sales Taxes: \(saletax1)")
        }
        print("Sales Taxes: \(saletax3)")
        print("Total:  \(total3)")

        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

















