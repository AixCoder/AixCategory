//
//  UIButton+AixCategory.m
//  AixCategorys
//
//  Created by user on 2017/11/2.
//  Copyright © 2017年 liuhongnian. All rights reserved.
//

#import "UIButton+AixCategory.h"
#import <objc/runtime.h>

@implementation UIButton (AixCategory)


- (UIEdgeInsets)clickEdgeInsets
{
    return [objc_getAssociatedObject(self, @selector(clickEdgeInsets)) UIEdgeInsetsValue];
}

- (void)setClickEdgeInsets:(UIEdgeInsets)clickEdgeInsets
{
    objc_setAssociatedObject(self, @selector(clickEdgeInsets), [NSValue valueWithUIEdgeInsets:clickEdgeInsets], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    if (UIEdgeInsetsEqualToEdgeInsets(self.clickEdgeInsets, UIEdgeInsetsZero))
    {
        return [super pointInside:point withEvent:event];
    }
    else
    {
        CGRect large = UIEdgeInsetsInsetRect(self.bounds, self.clickEdgeInsets);
        return CGRectContainsPoint(large, point) ? YES : NO;
    }
}

@end
