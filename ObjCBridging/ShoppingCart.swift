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

struct ShoppingCart  {
    // sourcery:enableBridging
    var items: [String]
    // sourcery:enableBridging
    var checkoutOption: CheckoutOption?

    init(items: [String], checkoutOption: CheckoutOption? = nil) {
        self.items = items
        self.checkoutOption = checkoutOption
    }
}

extension ShoppingCart : AutoObjCBridgeable {}
extension CheckoutOption : AutoObjCBridgeable {}
