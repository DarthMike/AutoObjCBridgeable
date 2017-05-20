// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

// Bridging of structs

@objc(XYZEmptyStruct)
class _ObjCEmptyStruct : NSObject {
    private (set) var emptyStruct: EmptyStruct

    // Initializer to be used from Swift code
    init(emptyStruct: EmptyStruct) {
        self.emptyStruct = emptyStruct
    }

}


@objc(XYZShoppingCart)
class _ObjCShoppingCart : NSObject {
    private (set) var shoppingCart: ShoppingCart

    // Initializer to be used from Swift code
    init(shoppingCart: ShoppingCart) {
        self.shoppingCart = shoppingCart
    }

}


@objc(XYZStructWithSwiftProperties)
class _ObjCStructWithSwiftProperties : NSObject {
    private (set) var structWithSwiftProperties: StructWithSwiftProperties

    // Initializer to be used from Swift code
    init(structWithSwiftProperties: StructWithSwiftProperties) {
        self.structWithSwiftProperties = structWithSwiftProperties
    }

}


// Bridging of enums
@objc(XYZCheckoutOptionCreditCard)
class _ObjCCheckoutOptionCreditCard : NSObject {
    let value1 : Int

    init(value1 : Int )
    {
        self.value1 = value1
    }
}

@objc(XYZCheckoutOptionPaypal)
class _ObjCCheckoutOptionPaypal : NSObject {
    let value1 : String

    init(value1 : String )
    {
        self.value1 = value1
    }
}

@objc(XYZOtherEnumA)
class _ObjCOtherEnumA : NSObject {

}

@objc(XYZOtherEnumB)
class _ObjCOtherEnumB : NSObject {
    let value1 : _ObjCEmptyStruct

    init(value1 : _ObjCEmptyStruct)
    {
        self.value1 = value1
    }
}

