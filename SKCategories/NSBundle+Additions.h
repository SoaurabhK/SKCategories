//
//  NSBundle+Additions.h
//  SKCategories
//
//  Created by Soaurabh Kakkar on 12/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (Additions)

/*!
 *  Use this class method to fetch the application bundle name.
 *  @return String value of the application bundle name
 */
+ (NSString*)bundleName;

/*!
 *  Use this class method to fetch the application bundle identifier.
 *  @return String value of the application bundle identifier
 */
+ (NSString*)bundleIdentifier;

/*!
 *  Use this class method to fetch the application version number.
 *  @return UInt32 value of the application version number
 */
+ (UInt32)versionNumber;

/*!
 *  Use this class method to fetch the application version.
 *  @return String value of the application version
 */
+ (NSString*)version;

@end
