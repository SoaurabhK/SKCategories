//
//  UIDevice+Additions.m
//  SKCategories
//
//  Created by Soaurabh Kakkar on 23/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import "UIDevice+Additions.h"

@implementation UIDevice (Additions)
+ (BOOL)isPad
{
    static BOOL isPad;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        isPad = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
    });
    
    return isPad;
}

+ (BOOL)isPhone
{
    static BOOL isPhone;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        isPhone = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone;
    });
    
    return isPhone;
}

+ (BOOL)isPhone4{
    static BOOL isPhone4;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        const CGSize size = [UIScreen mainScreen].bounds.size;
        isPhone4 = [self isPhone] && (size.height == 480.f || size.width == 480.f);
    });
    
    return isPhone4;
}


+ (BOOL)isPhone5
{
    static BOOL isPhone5;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        const CGSize size = [UIScreen mainScreen].bounds.size;
        isPhone5 = [self isPhone] && (size.height == 568.f || size.width == 568.f);
    });
    
    return isPhone5;
}

+ (BOOL)isPhone6
{
    static BOOL isPhone6;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        const CGSize size = [UIScreen mainScreen].bounds.size;
        isPhone6 = [self isPhone] && (size.height == 667.f || size.width == 667.f);
    });
    
    return isPhone6;
}

+ (BOOL)isPhone6Plus
{
    static BOOL isPhone6Plus;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        const CGSize size = [UIScreen mainScreen].bounds.size;
        isPhone6Plus = [self isPhone] && (size.height == 736.f || size.width == 736.f);
    });
    
    return isPhone6Plus;
}


+ (BOOL)isBiggerThan5
{
    static BOOL isBiggerThan5;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        const CGSize size = [UIScreen mainScreen].bounds.size;
        isBiggerThan5 = [self isPhone] && (size.height > 568.f || size.width > 568.f);
    });
    
    return isBiggerThan5;
}


+ (NSUInteger)deviceSystemMajorVersion
{
    static NSUInteger deviceSystemMajorVersion = -1;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        deviceSystemMajorVersion = [[[[[UIDevice currentDevice] systemVersion] componentsSeparatedByString:@"."] objectAtIndex:0] intValue];
    });
    
    return deviceSystemMajorVersion;
}

+ (BOOL)isDeviceSystemMajorVersionAtLeast8
{
    return [self deviceSystemMajorVersion] >= 8;
}

+ (BOOL)isDeviceSystemMajorVersionLessThan8
{
    return [self deviceSystemMajorVersion] < 8;
}

@end
