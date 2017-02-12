//
//  NSBundle+Additions.m
//  SKCategories
//
//  Created by Soaurabh Kakkar on 12/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import "NSBundle+Additions.h"

@implementation NSBundle (Additions)

#pragma mark Convenience class accessors on application bundle
+ (NSString*)bundleName
{
    static NSString* bundleName;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        bundleName = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString*)kCFBundleNameKey];
    });
    
    return bundleName;
}

+ (NSString*)bundleIdentifier
{
    static NSString* bundleIdentifier;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        bundleIdentifier = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString*)kCFBundleIdentifierKey];
    });
    
    return bundleIdentifier;
}

+ (UInt32)versionNumber
{
    return CFBundleGetVersionNumber(CFBundleGetMainBundle());
}

+ (NSString*)version
{
    CFStringRef ver = CFBundleGetValueForInfoDictionaryKey(CFBundleGetMainBundle(), kCFBundleVersionKey);
    return (__bridge_transfer NSString*)ver;
}

@end
