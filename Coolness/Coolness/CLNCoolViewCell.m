// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolViewCell.h"

@interface CLNCoolViewCell ()
@property (assign, nonatomic) BOOL highlighted;
@property (class, readonly, nonatomic) NSDictionary *textAttributes;
@end

@implementation CLNCoolViewCell

// TODO: Cache the instance
+ (NSDictionary *)textAttributes {
    return @{ NSFontAttributeName : [UIFont boldSystemFontOfSize:20],
              NSForegroundColorAttributeName : UIColor.whiteColor  };
}

- (void)setHighlighted:(BOOL)highlighted {
    _highlighted = highlighted;
    self.alpha = highlighted ? 0.5 : 1.0;
}

// MARK: - Drawing and resizing

- (void)drawRect:(CGRect)rect {
    // TODO: Adjust the origin
    [self.text drawAtPoint:CGPointZero withAttributes:self.class.textAttributes];
}

// MARK: - UIResponder methods

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.superview bringSubviewToFront:self];
    self.highlighted = YES;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = touches.anyObject;
    CGPoint currLocation = [touch locationInView:nil];
    CGPoint prevLocation = [touch previousLocationInView:nil];
    
    CGFloat deltaX = currLocation.x - prevLocation.x;
    CGFloat deltaY = currLocation.y - prevLocation.y;
    
    self.frame = CGRectOffset(self.frame, deltaX, deltaY);
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.highlighted = NO;
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.highlighted = NO;
}

@end
