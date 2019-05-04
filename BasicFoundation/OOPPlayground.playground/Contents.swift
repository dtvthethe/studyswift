//: Playground - noun: a place where people can play

import Cocoa

// Vi Du 1: Array list object
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

// Vi Du2: convert class cha sang class con vaf nguoc lai
class Parent{
    public var ID:String?
    public var name:String?
    
    init(ID:String, name:String) {
        self.ID = ID
        self.name = name
    }
    
    public func printAll(){
        print("Dis is parent")
    }
}

class Daughter: Parent{
    public var studentID:String?
    
    init(ID:String, name:String, studentID:String) {
        self.studentID = studentID
        super.init(ID: ID, name: name)
    }
    
    public override func printAll(){
        print("Dis is children")
    }
}


var pa = Parent(ID: "001A", name: "John Doe")
var daug = Daughter(ID: "002B", name: "Viktim", studentID: "ST00381")

var convert_Pa_To_Daugh:Parent = daug
var convert_Daugh_To_Pa:Daughter = pa as! Daughter // ERROR: lop con ko the chua dc kia du lieu cua lop cha
convert_Pa_To_Daugh.printAll()
convert_Daugh_To_Pa.printAll()






