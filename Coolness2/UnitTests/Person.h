// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>

@class Dog;

@interface Person : NSObject

@property (copy, nonatomic) NSString *firstName;
@property (copy, nonatomic) NSString *lastName;
@property (assign, nonatomic) NSInteger age;
@property (strong, nonatomic) Dog *dog;

@end
