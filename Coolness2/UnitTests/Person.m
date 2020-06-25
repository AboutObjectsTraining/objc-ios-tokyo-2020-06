// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"

@implementation Person

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@, age: %@, dog: %@", self.firstName, self.lastName, @(self.age), self.dog];
}

@end
