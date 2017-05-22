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

    // Initializer to be used from ObjC code
    override 
    init(){
        self.emptyStruct = EmptyStruct(
            )
    }

}


@objc(XYZShoppingCart)
class _ObjCShoppingCart : NSObject {
    private (set) var shoppingCart: ShoppingCart

    // Initializer to be used from Swift code
    init(shoppingCart: ShoppingCart) {
        self.shoppingCart = shoppingCart
    }

    // Initializer to be used from ObjC code
    init(
        items: [String], 
        checkoutOption: Any?
    ){
        // Unwrapping of enumeration
        guard let enumeration2 = checkoutOption as? _ObjCCheckoutOption else {
            preconditionFailure("Type of enumeration not valid for checkoutOption")
        }
        self.shoppingCart = ShoppingCart(
                items: items,
                checkoutOption: enumeration2.checkoutOption
            )
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

    // Computed property for enums
    var checkoutOption : Any? {
        get {
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
        set {
            if let caseValue = newValue as? _ObjCCheckoutOptionCreditCard {
                self.shoppingCart.checkoutOption = .creditCard(given: caseValue.value1)
            }
            if let caseValue = newValue as? _ObjCCheckoutOptionPaypal {
                self.shoppingCart.checkoutOption = .paypal(caseValue.value1)
            }
        }
    }



}


@objc(XYZStructWithOtherStructs)
class _ObjCStructWithOtherStructs : NSObject {
    private (set) var structWithOtherStructs: StructWithOtherStructs

    // Initializer to be used from Swift code
    init(structWithOtherStructs: StructWithOtherStructs) {
        self.structWithOtherStructs = structWithOtherStructs
    }

    // Initializer to be used from ObjC code
    init(
        contained: EmptyStruct
    ){
        self.structWithOtherStructs = StructWithOtherStructs(
                contained: contained
            )
    }


    var contained : _ObjCEmptyStruct {
        get {
            let value = self.structWithOtherStructs.contained
            return _ObjCEmptyStruct(emptyStruct: value)
        }

        set {
            self.structWithOtherStructs.contained = newValue.emptyStruct
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

    // Initializer to be used from ObjC code
    init(
        name: String, 
        count: Int, 
        valid: Bool, 
        mutableValid: Bool, 
        someStuff: [String]
    ){
        self.structWithSwiftProperties = StructWithSwiftProperties(
                name: name,
                count: count,
                valid: valid,
                mutableValid: mutableValid,
                someStuff: someStuff
            )
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

@objc(XYZCheckoutOption)
class _ObjCCheckoutOption : NSObject {
    private (set) var checkoutOption: CheckoutOption

    // Initializer for Swift code
    init(value: CheckoutOption) {
        self.checkoutOption = value
    }

    // Initializer for Objective-C code
    init(caseValue: Any) {
        if let caseValue = caseValue as? _ObjCCheckoutOptionCreditCard {
            self.checkoutOption = .creditCard(
given: caseValue.value1
)
        }
         else if let caseValue = caseValue as? _ObjCCheckoutOptionPaypal {
            self.checkoutOption = .paypal(
caseValue.value1
)
        }
        else {
            preconditionFailure("Value \(caseValue) is not compatible with cases of CheckoutOption")
        }
    }
}


// A case of CheckoutOption
@objc(XYZCheckoutOptionCreditCard)
class _ObjCCheckoutOptionCreditCard : NSObject {
    let value1 : Int

    init(value1 : Int )
    {
        self.value1 = value1
    }
}

// A case of CheckoutOption
@objc(XYZCheckoutOptionPaypal)
class _ObjCCheckoutOptionPaypal : NSObject {
    let value1 : String

    init(value1 : String )
    {
        self.value1 = value1
    }
}

@objc(XYZOtherEnum)
class _ObjCOtherEnum : NSObject {
    private (set) var otherEnum: OtherEnum

    // Initializer for Swift code
    init(value: OtherEnum) {
        self.otherEnum = value
    }

    // Initializer for Objective-C code
    init(caseValue: Any) {
        if let _ = caseValue as? _ObjCOtherEnumA {
            self.otherEnum = .a
        }
         else if let caseValue = caseValue as? _ObjCOtherEnumB {
            self.otherEnum = .b(
caseValue.value1.emptyStruct
)
        }
        else {
            preconditionFailure("Value \(caseValue) is not compatible with cases of OtherEnum")
        }
    }
}


// A case of OtherEnum
@objc(XYZOtherEnumA)
class _ObjCOtherEnumA : NSObject {

}

// A case of OtherEnum
@objc(XYZOtherEnumB)
class _ObjCOtherEnumB : NSObject {
    let value1 : _ObjCEmptyStruct

    init(value1 : _ObjCEmptyStruct)
    {
        self.value1 = value1
    }
}

