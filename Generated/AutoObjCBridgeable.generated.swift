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

    // Computed property for enums
    var checkoutOption : Any? {
        guard let value = self.shoppingCart.checkoutOption else {
            return nil;
        }

        switch value {
            case .creditCard(let value1):
                return _ObjCCheckoutOptionCreditCard(value1 : value1)
            case .paypal(let value1):
                return _ObjCCheckoutOptionPaypal(value1 : value1)
        }
    }


    // Forwarding property for native types
    var items : [String]
    {
        get {
            return self.shoppingCart.items
        }
        set {
            self.shoppingCart.items = newValue
        }
    }

}


@objc(XYZStructWithSwiftProperties)
class _ObjCStructWithSwiftProperties : NSObject {
    private (set) var structWithSwiftProperties: StructWithSwiftProperties

    // Initializer to be used from Swift code
    init(structWithSwiftProperties: StructWithSwiftProperties) {
        self.structWithSwiftProperties = structWithSwiftProperties
    }


    // Forwarding property for native types
    var name : String
    {
        get {
            return self.structWithSwiftProperties.name
        }
    }


    // Forwarding property for native types
    var count : Int
    {
        get {
            return self.structWithSwiftProperties.count
        }
    }


    // Forwarding property for native types
    var valid : Bool
    {
        get {
            return self.structWithSwiftProperties.valid
        }
    }


    // Forwarding property for native types
    var mutableValid : Bool
    {
        get {
            return self.structWithSwiftProperties.mutableValid
        }
        set {
            self.structWithSwiftProperties.mutableValid = newValue
        }
    }


    // Forwarding property for native types
    var someStuff : [String]
    {
        get {
            return self.structWithSwiftProperties.someStuff
        }
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

