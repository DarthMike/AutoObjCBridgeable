//
//  ShoppingCart.swift
//  ObjCBridging
//
//  Created by Miguel on 12/05/2017.
//  Copyright © 2017 miqu. All rights reserved.
//

enum CheckoutOption {
    case creditCard(given: Int)
    case paypal(String)
}

struct EmptyStruct : AutoObjCBridgeable {
    
}

struct StructWithSwiftProperties : AutoObjCBridgeable {
    let name: String
    let count: Int
    let valid: Bool
    let someStuff: [String]
}

enum OtherEnum : AutoObjCBridgeable {
    case a
    case b(EmptyStruct)
}

struct ShoppingCart  {
    var checkoutOption: CheckoutOption?
    var items: [String]

    init(items: [String], checkoutOption: CheckoutOption? = nil) {
        self.items = items
        self.checkoutOption = checkoutOption
    }
}

extension ShoppingCart : AutoObjCBridgeable {}
extension CheckoutOption : AutoObjCBridgeable {}
