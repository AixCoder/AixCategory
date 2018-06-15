//
//  NSDictionary+AixCategory.m
//  AixCategorys
//
//  Created by liuhongnian on 12/1/16.
//  Copyright © 2016 liuhongnian. All rights reserved.
//

#import "NSDictionary+AixCategory.h"

@implementation NSDictionary (AixCategory)

- (NSString *)toJsonString
{
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError *error ;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
        if (!error) {
            NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
            return jsonString;
        }
    }
    return nil;
}

- (BOOL)x_containsObjectForKey:(id)key
{
    if (key) {
        return self[key] != nil;
    }
    return NO;
}

@end
