//
//  UIImage+AixCategory.m
//  AixCategorys
//
//  Created by liuhongnian on 16/10/7.
//  Copyright © 2016年 liuhongnian. All rights reserved.
//

#import "UIImage+AixCategory.h"

@implementation UIImage (AixCategory)

+ (UIImage *)aix_appLaunchImage
{
    return [UIImage imageNamed:[self getAppLaunchImgName]];
}

//from stackflow
+ (NSString *)getAppLaunchImgName
{
    NSString *viewOrientation = @"Portrait";
    
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))
    {
        viewOrientation = @"Landscape";
    }
    
    NSString *launchImgName;
    
    NSArray *imagesDict = [[[NSBundle mainBundle] infoDictionary]valueForKey:@"UILaunchImages"];
    
    CGSize viewSize = [UIApplication sharedApplication].windows.firstObject.bounds.size;
    
    for (NSDictionary *imgDic in imagesDict) {
        
        CGSize imageSize = CGSizeFromString(imgDic[@"UILaunchImageSize"]);
        
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:imgDic[@"UILaunchImageOrientation"]]) {
            
            launchImgName = imgDic[@"UILaunchImageName"];
        }
    }
    
    return launchImgName;
}


@end
