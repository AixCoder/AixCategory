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

- (NSString *)x_stringValueForKey:(id)key
{
    NSString *stringValue = self[key];
    
    if (![self _isNull:stringValue] && stringValue) {
        if ([stringValue isKindOfClass:[NSString class]] || [stringValue isKindOfClass:[NSNumber class]]) {
            return [NSString stringWithFormat:@"%@",stringValue];
        }else{
            return nil;
        }
    }
    return nil;
}

- (NSArray *)x_arrayValueForKey:(id)key
{
    NSArray *array = self[key];
    if (array && ![self _isNull:array]) {
        if ([array isKindOfClass:[NSArray class]]) {
            return array;
        }else{
            return nil;
        }
    }
    
    return nil;
    
}

- (NSDictionary *)x_dicValueForKey:(id)key
{
    NSDictionary *dic = self[key];
    if (dic &&
        ![self _isNull:dic] &&
        [dic isKindOfClass:[NSDictionary class]]) {
        return dic;
    }
    
    return nil;
}

- (BOOL)_isNull:(id)object
{
    if ([object isEqual:[NSNull null]]) {
        return YES;
    }
    return NO;
}

@end
