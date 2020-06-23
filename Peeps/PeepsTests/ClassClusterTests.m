// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import "Person.h"

@interface ClassClusterTests : XCTestCase
@end

@implementation ClassClusterTests

- (void)testIdDataType {
    id foo = nil;
    
    [foo fullName];
    [foo description];
    
    NSObject *bar = nil;
    
//    [bar fullName];
    [bar description];
}

- (void)testArrays {
    id foo = nil;
    NSArray *a = [[NSArray alloc] initWithArray:@[@1]];
    NSArray *b = [NSArray arrayWithObjects:@1, foo, @2, nil];
    
    NSArray *c = @[@1, @"foo", [[Person alloc] init]];
}

//- (void)testStringClassCluster {
//    NSString *s1 = [NSString alloc];
//    NSString *s2 = [NSString alloc];
//    NSString *s3 = [[NSString alloc] initWithString:@"Foo"];
//    NSString *s4 = [[NSString alloc] initWithFormat:@"Bar"];
//    NSMutableString *s5 = [[NSMutableString alloc] initWithFormat:@"Hello %@", @"Class"];
//    NSMutableString *s6 = [NSMutableString alloc];
//
//    s1 = [s1 initWithFormat:@"Hello %@", @"World!"];
//    NSLog(@"%@", s1);
//    [(NSMutableString *)s1 appendString:@"Wow!"];
//
//    [s5 appendString:@"! Woohoo!"];
//    NSLog(@"%@", s5);
//}

@end
