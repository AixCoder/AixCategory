//
//  UIViewController+AixCategory.h
//  AixCategorys
//
//  Created by liuhongnian on 10/25/16.
//  Copyright © 2016 liuhongnian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (AixCategory)

+ (instancetype)aix_topViewController;

- (BOOL)x_isVisible;

- (void)showAlertViewControllerWithTitle:(NSString *)title
                                 message:(NSString *)message
                            cancelAction:(void(^)(void))cancelHandle
                             cancelTitle:(NSString *)cancel_title
                              doneAction:(void(^)(void))doneHandle
                               doneTitle:(NSString *)done_title;

@end
