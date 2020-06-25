// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Dog.h"

@implementation Dog

- (NSString *)description
{
    return [NSString stringWithFormat:@"name: %@, breed: %@", self.name, self.breed];
}

@end
