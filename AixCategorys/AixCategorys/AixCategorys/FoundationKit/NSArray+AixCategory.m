//
//  NSArray+AixCategory.m
//  AixCategorys
//
//  Created by liuhongnian on 10/25/16.
//  Copyright © 2016 liuhongnian. All rights reserved.
//

#import "NSArray+AixCategory.h"

@implementation NSArray (AixCategory)

- (id)x_safeObjectAtIndex:(NSUInteger)index
{
    if([self count] > 0 && [self count] > index)
        return [self objectAtIndex:index];
    else
        return nil;
}

- (id)x_randomObject
{
    if (self.count) {
        return self[arc4random_uniform((uint32_t)self.count)];
    }
    return nil;
}

@end
