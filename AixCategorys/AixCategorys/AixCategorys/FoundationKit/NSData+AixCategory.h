//
//  NSData+AixCategory.h
//  AixCategorys
//
//  Created by liuhongnian on 10/25/16.
//  Copyright © 2016 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AixCategory)

@property (nonatomic,readonly) NSData *MD5;
@property (nonatomic,readonly) NSString *MD5String;

- (nullable NSData*)x_gzipInflate;

- (nullable NSData*)x_gzipDeflate;

- (NSData *)AES128EncryptWithKey:(NSString *)key
                             gIv:(NSString *)Iv;///AES加密
- (NSData *)AES128DecryptWithKey:(NSString *)key
                             gIv:(NSString *)Iv;   //解密


@end
