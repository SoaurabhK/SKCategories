//
//  UIScreen+Additions.h
//  SKCategories
//
//  Created by Soaurabh Kakkar on 23/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (Additions)

/*!
 *  @return YES if the host device has a retina display.
 */
+ (BOOL)isRetina;

/*!
 *  @return CGRect of the screen bounds at current orientation.
 */
+ (CGRect)screenBounds;

/*!
 *  @return CGRect of the screen bounds for interface orientation (UIInterfaceOrientation).
 */
+ (CGRect)screenBoundsForInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;

@end
