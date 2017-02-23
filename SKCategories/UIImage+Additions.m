//
//  UIImage+Additions.m
//  SKCategories
//
//  Created by Soaurabh Kakkar on 23/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import "UIImage+Additions.h"

@implementation UIImage (Additions)

#pragma mark Static Private functions
static UIImage * SKImageWithDataAtScale(NSData *data, CGFloat scale)
{
    if ([UIImage instancesRespondToSelector:@selector(initWithData:scale:)])
    {
        return [[UIImage alloc] initWithData:data scale:scale];
    }
    else
    {
        UIImage *image = [[UIImage alloc] initWithData:data];
        return [[UIImage alloc] initWithCGImage:[image CGImage] scale:scale orientation:image.imageOrientation];
    }
}

static CGFloat SKImageScaleFactorToFitSize(CGSize imageSize, CGSize constrainSize)
{
    if (CGSizeEqualToSize(imageSize, constrainSize)) {
        return 1.0f;
    }
    
    CGFloat scaleFactorWidth    = imageSize.width / constrainSize.width;
    CGFloat scaleFactorHeight   = imageSize.height / constrainSize.height;
    CGFloat scaleFactor         = MAX(scaleFactorHeight, scaleFactorWidth);
    
    return scaleFactor;
}

static CGFloat SKImageScaleFactorToFillSize(CGSize imageSize, CGSize constrainSize)
{
    if (CGSizeEqualToSize(imageSize, constrainSize)) {
        return 1.0f;
    }
    
    CGFloat scaleFactorWidth    = imageSize.width / constrainSize.width;
    CGFloat scaleFactorHeight   = imageSize.height / constrainSize.height;
    CGFloat scaleFactor         = MIN(scaleFactorHeight, scaleFactorWidth);
    
    return scaleFactor;
}

#pragma mark Public accessors
+ (UIImage*)imageWithDataScreenScale:(NSData*)data
{
    return data ? SKImageWithDataAtScale(data, [UIScreen mainScreen].scale) : nil;
}

- (CGSize)SKImageAspectFitSize:(CGSize)imageSize constrainedToSize:(CGSize)constrainSize
{
    CGFloat scaleFactor     = SKImageScaleFactorToFitSize(imageSize, constrainSize);
    CGSize scaleSize       = CGSizeZero;
    
    scaleSize.width        = floor(imageSize.width / scaleFactor);
    scaleSize.height       = floor(imageSize.height / scaleFactor);
    
    return scaleSize;
}

- (CGSize)SKImageAspectFillSize:(CGSize)imageSize constrainedToSize:(CGSize)constrainSize
{
    CGFloat scaleFactor     = SKImageScaleFactorToFillSize(imageSize, constrainSize);
    CGSize scaleSize       = CGSizeZero;
    
    scaleSize.width        = floor(imageSize.width / scaleFactor);
    scaleSize.height       = floor(imageSize.height / scaleFactor);
    
    return scaleSize;
}

- (CGSize)sizeFromHeight:(CGFloat)height
{
    const CGFloat ratio = height / self.size.height;
    
    CGSize size = CGSizeZero;
    size.height = floor(ratio * self.size.height);
    size.width = floor(ratio * self.size.width);
    
    return size;
}

- (CGSize)sizeFromWidth:(CGFloat)width
{
    const CGFloat ratio = width / self.size.width;
    
    CGSize size = CGSizeZero;
    size.height = floor(ratio * self.size.height);
    size.width = floor(ratio * self.size.width);
    
    return size;
}

- (CGSize)sizeToAspectFitSize:(CGSize)size
{
    return [self SKImageAspectFitSize:self.size constrainedToSize:size];
}

@end
