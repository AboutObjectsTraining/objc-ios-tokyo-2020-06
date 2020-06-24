// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface BlockLiteralTests : XCTestCase

@end


void sayHello(void) {
    printf("Hello!\n");
}

void saySomethingNTimes(int count, void (*thingToSay)(void)) {
    for (int i = 0; i < count; i++) {
        printf("%s: ", __func__);
        thingToSay();
    }
}

void saySomethingBlockishNTimes(int count, void(^thingToSay)(void)) {
    for (int i = 0; i < count; i++) {
        printf("%s: ", __func__);
        thingToSay();
    }
}

@implementation BlockLiteralTests

- (void)testFunctionPointer {
    void (*myPtr)(void) = NULL;
    
    myPtr = sayHello;
    
    myPtr();
    
    saySomethingNTimes(3, myPtr);
}

- (void)testBlockLiteral {
    void (^myBlock)(void) = nil;
    
    myBlock = ^{
        printf("Hello from my block!\n");
    };
    
    myBlock();
    
    saySomethingBlockishNTimes(2, myBlock);
    
    saySomethingBlockishNTimes(3, ^{
        printf("Hello again!\n");
    });
}

@end
