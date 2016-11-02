//
//  NSString+AixCategory.h
//  AixCategorys
//
//  Created by liuhongnian on 16/10/7.
//  Copyright © 2016年 liuhongnian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AixCategory)

@property (nonatomic, readonly) NSData   * data;
@property (nonatomic, readonly) NSDate   * date;

@property (nonatomic, readonly) NSString * MD5;
@property (nonatomic, readonly) NSData   * MD5Data;//todo

@property (nonatomic, readonly) NSString * SHA1;
@property (nonatomic,readonly ) NSString * SHA256;
@property (nonatomic,readonly ) NSString * SHA512;

- (BOOL)isEmpty;
- (BOOL)isNotEmpty;
- (BOOL)isNormal;

- (BOOL)isTelephone;    // match telephone
- (BOOL)isMobilephone;  // match mobilephone, 11 numberic
- (BOOL)isUserName;     // match alphabet 3-20
- (BOOL)isChineseUserName;  // match alphabet and chinese characters, 3-20
- (BOOL)isPureChineseName;// match just chinese characters 2-16
- (BOOL)isPassword;
- (BOOL)isEmail;
- (BOOL)isWebURL;
- (BOOL)isIPAddress;

- (NSString *)aix_encodeToBase64;
- (NSString *)aix_decodeBase64;

- (NSString*)aix_URLEncode;
- (NSString*)aix_URLDecode;


/**
 过滤掉空格

 @return 过滤后的结果
 */
- (NSString*)aix_trimmingWhitespace;
- (NSString*)aix_trimmingWhitespaceAndNewlines;


@end
