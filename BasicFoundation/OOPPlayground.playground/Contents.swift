//: Playground - noun: a place where people can play

import Cocoa

var a = 1
var b = 0

do{
    let c = try a / b
    print("gia tri cua c la = \(c)")
}
catch{
    print(error.localizedDescription)
}