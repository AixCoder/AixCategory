//
//  UIViewController+AixCategory.m
//  AixCategorys
//
//  Created by liuhongnian on 10/25/16.
//  Copyright © 2016 liuhongnian. All rights reserved.
//

#import "UIViewController+AixCategory.h"

@implementation UIViewController (AixCategory)

+ (instancetype)aix_topViewController
{
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    return [self findCurrentViewController:rootVC];
    
}

+ (UIViewController *)findCurrentViewController:(UIViewController *)viewController
{
    UIViewController *currentVC = viewController;
    if (viewController.presentedViewController) {
        
        [self findCurrentViewController:viewController.presentedViewController];
        
    }else if ([viewController isKindOfClass:[UINavigationController class]]) {
        
        UINavigationController *navController = (UINavigationController*)viewController;
        [self findCurrentViewController:navController.visibleViewController];
        
    }else if ([viewController isKindOfClass:[UITabBarController class]]){
        
        UITabBarController *tabBarCtrl = (UITabBarController*)viewController;
        [self findCurrentViewController:tabBarCtrl.selectedViewController];
        
    }else if ([viewController isKindOfClass:[UIViewController class]]){
        
        return currentVC;
    }
    
    return nil;
}

- (BOOL)x_isVisible
{
    return ([self isViewLoaded] && self.view.window);
}

@end
