// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import "Person.h"
#import "Dog.h"

@interface PersonTests : XCTestCase

@end

@implementation PersonTests

- (void)testCreatePerson {
    Person *fred = [[Person alloc] init];
    NSLog(@"%@", fred);
    
    [fred setFirstName:@"Fred"];
    
    NSLog(@"First name is %@", [fred firstName]);
}

- (void)testFullName {
    Person *fred = [[Person alloc] init];
    [fred setFirstName:@"Fred"];
    [fred setLastName:@"Smith"];
    [fred setAge:42];
    NSLog(@"Full name is %@", fred);
}

- (void)testDesignatedInitializer {
    Person *fred = [[Person alloc] initWithFirstName:@"Fred" lastName:@"Smith" age:42];
    NSLog(@"%@", fred);
}

- (void)testFactoryMethod {
    Person *fred = [Person personWithFirstName:@"Fred" lastName:@"Smith" age:42];
    NSLog(@"%@", fred);
}

- (void)testProtocolImplementation {
    Person *fred = [Person personWithFirstName:@"Fred" lastName:@"Smith" age:42];
    Dog *rover = [[Dog alloc] init];
    [fred setDog:rover];
    NSLog(@"%@", fred);
    
    printf("%s\n", __func__);
    
    [fred growl];
    
    if ([fred respondsToSelector:@selector(whine)]) {
        [fred whine];
    }
}

@end
