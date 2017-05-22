//
//  BridgingSwiftAPIReceiver.swift
//  ObjCBridging
//
//  Created by Miguel on 21/05/2017.
//  Copyright © 2017 miqu. All rights reserved.
//

import Foundation

@objc(XYZSwiftReceiverAPI)
final class SwiftReceiverAPI : NSObject {
    
    func sendEmptyStruct(_ value: EmptyStruct) {
        print(value)
    }
    
    func sendStruct(_ value: StructWithSwiftProperties) {
        print(value)
    }
    
    func sendOtherEnum(_ value: OtherEnum) {
        print(value)
    }
    
    func sendShoppingCart(_ value: ShoppingCart) {
        print(value)
    }
    
}

extension SwiftReceiverAPI {
    func sendEmptyStruct(_ value: _ObjCEmptyStruct) {
        sendEmptyStruct(value.emptyStruct)
    }
    
    func sendStruct(_ value: _ObjCStructWithSwiftProperties) {
        sendStruct(value.structWithSwiftProperties)
    }
    
    func sendOtherEnum(_ value: _ObjCOtherEnum) {
        sendOtherEnum(value.otherEnum)
    }
    
    func sendShoppingCart(_ value: _ObjCShoppingCart) {
        print(value)
    }
}
