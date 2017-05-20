//
//  TestObjects.swift
//  ObjCBridging
//
//  Created by Miguel on 20/05/2017.
//  Copyright © 2017 miqu. All rights reserved.
//

import Foundation

struct EmptyStruct : AutoObjCBridgeable {
    
}

struct StructWithSwiftProperties : AutoObjCBridgeable {
    // sourcery:enableBridging
    let name: String
    // sourcery:enableBridging
    let count: Int
    // sourcery:enableBridging
    let valid: Bool
    // sourcery:enableBridging
    var mutableValid: Bool
    // sourcery:enableBridging
    let someStuff: [String]
}

enum OtherEnum : AutoObjCBridgeable {
    case a
    case b(EmptyStruct)
}
