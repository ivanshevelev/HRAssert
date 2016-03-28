//
//  HRAssertTests.m
//  HRAssertTests
//
//  Created by Ivan Shevelev on 03/24/2016.
//  Copyright (c) 2016 Ivan Shevelev. All rights reserved.
//

@import XCTest;
#import <HRAssert/HRAssert.h>

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testKindOfClassAssert {
    @try {
        NSString *string = @"testString";
        NSMutableString *mutableString = [NSMutableString stringWithString:@"testMutableString"];
        Class stringClass = [string class];
        Class mutableStringClass = [string class];
        
        HRKindOfClassAssert(NSString, NSMutableString);
        HRKindOfClassAssert(NSString, NSString);
        HRKindOfClassAssert(NSString, string);
        HRKindOfClassAssert(NSString, mutableStringClass);
        HRKindOfClassAssert(NSString, stringClass);
        HRKindOfClassAssert(NSString, mutableString);
        
        HRKindOfClassAssert(NSMutableString, string);
        HRKindOfClassAssert(NSString, string);
        HRKindOfClassAssert(string, string);
        HRKindOfClassAssert(mutableStringClass, string);
        HRKindOfClassAssert(stringClass, string);
        HRKindOfClassAssert(mutableString, string);
        
        HRKindOfClassAssert(NSMutableString, stringClass);
        HRKindOfClassAssert(NSString, stringClass);
        HRKindOfClassAssert(string, stringClass);
        HRKindOfClassAssert(mutableStringClass, stringClass);
        HRKindOfClassAssert(stringClass, stringClass);
        HRKindOfClassAssert(mutableString, stringClass);
        
    } @catch (NSException *exception) {
        NSLog(@"Exception: %@", exception);
        XCTAssert(exception);
    } @finally {
        NSLog(@"Finnaly block");
    }
}

@end

