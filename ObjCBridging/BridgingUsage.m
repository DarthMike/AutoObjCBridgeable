//
//  BridgingUsage.m
//  ObjCBridging
//
//  Created by Miguel on 21/05/2017.
//  Copyright © 2017 miqu. All rights reserved.
//

#import "BridgingUsage.h"
#import "ObjCBridging-Swift.h"

@interface BridgingUsage()
@property (nonatomic) XYZSwiftReceiverAPI *swiftAPI;
@end

@implementation BridgingUsage

- (instancetype)init {
    self = [super init];
    if (self) {
        self.swiftAPI = [[XYZSwiftReceiverAPI alloc] init];
    }
    return self;
}

- (void)doStuffUsingSwiftCode {
    // Instantiating an empty struct
    XYZEmptyStruct *empty = [[XYZEmptyStruct alloc] init];
    [self.swiftAPI sendEmptyStruct:empty];
    
    
    // Instantiating a complex struct
    XYZStructWithSwiftProperties *complex = [[XYZStructWithSwiftProperties alloc] initWithName:@"myName" count:10 valid:YES mutableValid:NO someStuff:@[@"hello", @"from", @"an", @"old", @"friend"]];
    
    [self.swiftAPI sendStruct:complex];
    
    // Instantiating enum case without associated value
    XYZOtherEnumA *caseA = [[XYZOtherEnumA alloc] init];
    [self.swiftAPI sendEnum:caseA];
    
    // Instantiating an enum case with associated value
    XYZOtherEnumB *caseB = [[XYZOtherEnumB alloc] initWithValue1:[[XYZEmptyStruct alloc] init]];
    [self.swiftAPI sendEnum:caseB];
    
    
}

@end
