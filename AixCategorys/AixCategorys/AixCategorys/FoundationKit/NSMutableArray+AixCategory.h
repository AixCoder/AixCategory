//
//  NSMutableArray+AixCategory.h
//  AixCategorys
//
//  Created by liuhongnian on 10/25/16.
//  Copyright © 2016 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (AixCategory)

- (id)aix_safeObjectAtIndex:(NSUInteger)index;

- (void)aix_moveObjectFromIndex:(NSUInteger)from
                    toIndex:(NSUInteger)to;

- (void)aix_safeAddObject:(id)obj;

- (void)aix_safeInsertObject:(id)obj atIndex:(NSUInteger)index;

/**
 打乱数组元素顺序
 */
- (void)x_shuffle;
@end
