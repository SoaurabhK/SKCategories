//
//  UIScreen+Additions.m
//  SKCategories
//
//  Created by Soaurabh Kakkar on 23/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import "UIScreen+Additions.h"

@implementation UIScreen (Additions)
+ (BOOL)isRetina
{
    static BOOL isRetina;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        isRetina = [UIScreen mainScreen].scale > 1.0f;
    });
    
    return isRetina;
}

+ (CGRect)screenBounds
{
    return [self screenBoundsForInterfaceOrientation:[UIApplication sharedApplication].statusBarOrientation];
}

+ (CGRect)screenBoundsForInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    const CGRect bounds = [UIScreen mainScreen].bounds;
    
    if (UIInterfaceOrientationIsLandscape(interfaceOrientation))
    {
        return CGRectMake(bounds.origin.y, bounds.origin.x, bounds.size.height, bounds.size.width);
    }
    else
    {
        return bounds;
    }
    
}
@end
