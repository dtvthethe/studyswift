//: Playground - noun: a place where people can play

import UIKit

//class Device{
//    var name:String!
//    var price:Int32!
//    
//    init(name:String, price:Int32){
//        self.name = name
//        self.price = price
//    }
//    
//    func getString() -> String {
//        return "Name: \(self.name!) has price = \(self.price!)"
//    }
//}
//
//var arrDevices: Array<Device> = [Device.init(name: "iPhone 6", price: 35000), Device.init(name: "SamSung", price: 23000), Device.init(name: "Xiaomi", price: 22000)]
//
//for device in arrDevices{
//    print(device.getString())
//}
var c = 1
var b = 0

do {
    x = try c / b
} catch {
    print("No")
}