//
//  UIImage+Additions.h
//  SKCategories
//
//  Created by Soaurabh Kakkar on 23/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Additions)

/*!
 *  Creates an image with the scale factor of the main screen.
 *
 *  @param data - The NSData to convert to a UIImage
 *  @returns The UIImage or nil if data was nil.
 */
+ (UIImage*)imageWithDataScreenScale:(NSData*)data;

/*!
 *  Calculates the aspect fit size of an image given a constraining size
 *
 *  @param imageSize - The original image size
 *  @param constrainingSize - The wanted image size
 *  @returns The size of the image constrined with aspect fit
 */
- (CGSize)SKImageAspectFitSize:(CGSize)imageSize constrainedToSize:(CGSize)constrainingSize;

/*!
 *  Calculates the aspect fill size of an image given a constraining size
 *
 *  @param imageSize - The original image size
 *  @param constrainSize - The wanted image size
 *  @returns The size of the image constrined with aspect fill size
 */
- (CGSize)SKImageAspectFillSize:(CGSize)imageSize constrainedToSize:(CGSize)constrainSize;

/*!
 *  Calculates the image size given just the height with proportional ratio
 *
 *  @param height - The wanted image height
 *  @returns The size of the image given a certain height
 */
- (CGSize)sizeFromHeight:(CGFloat)height;

/*!
 *  Calculates the image size given just the width with proportional ratio
 *
 *  @param width - The wanted image width
 *  @returns The size of the image given a certain width
 */
- (CGSize)sizeFromWidth:(CGFloat)width;

/*!
 *  As SKImageAspectFitSize, but calculated on self (UIImage shorthand)
 *
 *  @see SKImageAspectFitSize
 *  @param size - The wanted size of the image
 *  @returns The size of the image constrined with aspect fit
 */
- (CGSize)sizeToAspectFitSize:(CGSize)size;

@end

