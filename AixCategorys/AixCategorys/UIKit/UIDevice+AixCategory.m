//
//  UIDevice+AixCategory.m
//  AixCategorys
//
//  Created by liuhongnian on 16/9/30.
//  Copyright © 2016年 liuhongnian. All rights reserved.
//

#import "UIDevice+AixCategory.h"

@implementation UIDevice (AixCategory)

#pragma mark disk
- (int64_t)diskSpace
{
    NSError *error = nil;
    
    NSDictionary *attributes = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:&error];

    if (error) return -1;
    
    int64_t space = [attributes[NSFileSystemSize] longLongValue];
    
    if (space < 0) {
        space = -1;
    }
    
    return space;
}

- (int64_t)freeDiskSpace
{
    NSError *error;
    NSDictionary *attributes = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:&error];
    
    if (error) {
        return -1;
    }
    
    int64_t freeSpace = [attributes[NSFileSystemFreeSize] longLongValue];
    if (freeSpace < 0) {
        freeSpace = -1;
    }
    return freeSpace;
}

- (int64_t)diskSpaceUsed
{
    int64_t total = self.diskSpace;
    int64_t free = self.freeDiskSpace;
    
    if ((total == -1) || (free == -1)) {
        return -1;
    }
    
    int64_t used = total - free;
    if (used < 0) {
        used = -1;
    }
    return used;
}


- (BOOL)isDevicePhone
{
#if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)
    
    NSString * device_model = [UIDevice currentDevice].model;
    if ([device_model rangeOfString:@"iPhone" options:NSCaseInsensitiveSearch].length > 0) {
        return YES;
    }
#endif
    return NO;
}

- (BOOL)isDevicePad
{
#if (TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR)
    NSString * device_model = [UIDevice currentDevice].model;
    
    if ([device_model rangeOfString:@"iPad" options:NSCaseInsensitiveSearch].length > 0) {
        return YES;
    }
#endif
    return NO;
}

- (BOOL)isDevicePod
{
    NSString * device_model = [UIDevice currentDevice].model;
    if ([device_model rangeOfString:@"iPod" options:NSCaseInsensitiveSearch].length > 0) {
        return YES;
    }
    return NO;

}

- (BOOL)isSimulator
{
#if(TARGET_IPHONE_SIMULATOR)
    return YES;
#else
    
    return NO;
#endif
}
@end
