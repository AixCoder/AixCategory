//
//  NSDictionary+AixCategory.h
//  AixCategorys
//
//  Created by liuhongnian on 12/1/16.
//  Copyright © 2016 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (AixCategory)

- (nullable NSString *)toJsonString;

- (BOOL)x_containsObjectForKey:(id _Nullable )key;

@end
