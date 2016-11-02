//
//  UIImage+AixCategory.h
//  AixCategorys
//
//  Created by liuhongnian on 16/10/7.
//  Copyright © 2016年 liuhongnian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (AixCategory)

+ (nullable UIImage *)aix_appLaunchImage;

- (nullable UIImage*)x_imageByRotateLeft90;
- (nullable UIImage*)x_imageByRotateRight90;
- (nullable UIImage*)x_imageByRotate180;

- (nullable UIImage*)x_imageByFlipVertical;
- (nullable UIImage*)x_imageByFlipHorizontal;

- (nullable UIImage*)x_imageByGrayScale;
- (nullable UIImage*)x_imageByBlurSoft;
- (nullable UIImage*)x_imageByBlurExtraLight;
- (nullable UIImage*)x_imageByBlurDark;

- (nullable UIImage *)x_imageByBlurRadius:(CGFloat)blurRadius
                              tintColor:(nullable UIColor *)tintColor
                               tintMode:(CGBlendMode)tintBlendMode
                             saturation:(CGFloat)saturation
                              maskImage:(nullable UIImage *)maskImage;

@end
