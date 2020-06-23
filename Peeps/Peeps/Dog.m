// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Dog.h"

@implementation Dog

- (void)whine {
    printf("Whine!\n");
}

- (void)bark {
    printf("Woof! Woof!\n");
}

- (id)copyWithZone:(NSZone *)zone {
    Dog *newDog = [[[self class] allocWithZone:zone] init];
    return newDog;
}

@end
