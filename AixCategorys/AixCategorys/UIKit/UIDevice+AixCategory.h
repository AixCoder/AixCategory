//
//  UIDevice+AixCategory.h
//  AixCategorys
//
//  Created by liuhongnian on 16/9/30.
//  Copyright © 2016年 liuhongnian. All rights reserved.
//

#import <UIKit/UIKit.h>

#define iOS_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define iOS_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define iOS_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define iOS_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define iOS_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

@interface UIDevice (AixCategory)

@property (nonatomic,readonly) BOOL isDevicePhone;
@property (nonatomic,readonly) BOOL isDevicePad;
@property (nonatomic,readonly) BOOL isDevicePod;
@property (nonatomic,readonly) BOOL isSimulator;

#pragma mark Disk Info

@property (nonatomic ,readonly) int64_t diskSpace;
@property (nonatomic, readonly) int64_t freeDiskSpace;
@property (nonatomic, readonly) int64_t diskSpaceUsed;

@end
