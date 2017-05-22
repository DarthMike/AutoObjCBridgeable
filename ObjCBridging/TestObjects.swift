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
    let name: String
    let count: Int
    let valid: Bool
    var mutableValid: Bool
    let someStuff: [String]
}

struct StructWithOtherStructs : AutoObjCBridgeable {
    var contained: EmptyStruct
}

enum OtherEnum : AutoObjCBridgeable {
    case a
    case b(EmptyStruct)
}
