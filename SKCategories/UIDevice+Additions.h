//
//  UIDevice+Additions.h
//  SKCategories
//
//  Created by Soaurabh Kakkar on 23/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (Additions)

/*!
 *  @return YES if the host device is a iPad.
 */
+ (BOOL)isPad;

/*!
 *  @return YES if the host device is a iPhone.
 */
+ (BOOL)isPhone;

/*!
 *  @return YES if the host device is a iPhone 4.
 */
+ (BOOL)isPhone4;

/*!
 *  @return YES if the host device is a iPhone 5.
 */
+ (BOOL)isPhone5;

/*!
 *  @return YES if the host device is a iPhone 6.
 */
+ (BOOL)isPhone6;

/*!
 *  @return YES if the host device is a iPhone 6+.
 */
+ (BOOL)isPhone6Plus;

/*!
 *  @return YES if the host device has a screen larger than iPhone 5.
 */
+ (BOOL)isBiggerThan5;

/*!
 *  @return NSUInteger of the device major version
 */
+ (NSUInteger)deviceSystemMajorVersion;

/*!
 *  @return YES if the host device is running on iOS8+.
 */
+ (BOOL)isDeviceSystemMajorVersionAtLeast8;

/*!
 *  @return YES if the host device is running on iOS versions below 8.
 */
+ (BOOL)isDeviceSystemMajorVersionLessThan8;

@end
