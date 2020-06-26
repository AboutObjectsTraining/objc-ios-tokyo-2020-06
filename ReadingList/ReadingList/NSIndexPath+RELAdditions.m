// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "NSIndexPath+RELAdditions.h"

@implementation NSIndexPath (RELAdditions)

+ (NSIndexPath *)rel_zero {
    return [self indexPathForRow:0 inSection:0];
}

@end
