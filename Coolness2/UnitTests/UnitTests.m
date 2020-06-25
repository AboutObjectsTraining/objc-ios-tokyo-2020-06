// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import "Person.h"
#import "Dog.h"

@interface UnitTests : XCTestCase

@end

@implementation UnitTests

- (void)testKVCBasics {
    Person *fred = [[Person alloc] init];
    Dog *rover = [[Dog alloc] init];
    
    [fred setValue:@"Frederick" forKey:@"firstName"];
    [fred setValue:@"Smythe" forKey:@"lastName"];
    [fred setValue:@42 forKey:@"age"];
    [fred setValue:rover forKey:@"dog"];
    
    [fred setValue:@"Rover" forKeyPath:@"dog.name"];
    [fred setValue:@"Labrador" forKeyPath:@"dog.breed"];
    
    NSLog(@"%@", fred);
}

- (void)testKVCWithDictionaries {
    Person *fred = [[Person alloc] init];
    Dog *rover = [[Dog alloc] init];
    
    [fred setValue:@"Frederick" forKey:@"firstName"];
    [fred setValue:@"Smythe" forKey:@"lastName"];
    [fred setValue:@42 forKey:@"age"];
    [fred setValue:rover forKey:@"dog"];
    
    [fred setValue:@"Rover" forKeyPath:@"dog.name"];
    [fred setValue:@"Labrador" forKeyPath:@"dog.breed"];
    
    NSDictionary *dict = [fred dictionaryWithValuesForKeys:@[@"firstName", @"lastName", @"age", @"dog"]];
    NSLog(@"%@", dict);
    
    Dog *spot = [[Dog alloc] init];
    [spot setValuesForKeysWithDictionary:@{ @"name" : @"Spot", @"breed" : @"Lab" }];
    NSLog(@"%@", spot);
    
    Person *bob = [[Person alloc] init];
    [bob setValuesForKeysWithDictionary:@{
        @"firstName" : @"Bob",
        @"lastName" : @"Smith",
        @"age" : @33,
        @"dog" : spot,
    }];
    NSLog(@"%@", bob);
    
    NSDictionary *personDict = @{
        @"firstName" : @"Bob",
        @"lastName" : @"Smith",
        @"age" : @33,
        @"dog" : @{ @"name" : @"Spot", @"breed" : @"Lab" },
    };
    
    [personDict writeToFile:@"/tmp/Person.plist" atomically:YES];
}

@end
