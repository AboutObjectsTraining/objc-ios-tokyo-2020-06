// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "UIImageView+RELAdditions.h"

@implementation UIImageView (RELAdditions)

- (CGFloat)rel_cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setRel_cornerRadius:(CGFloat)rel_cornerRadius {
    self.layer.cornerRadius = rel_cornerRadius;
}

@end
