//
//  UIAlertView+Additions.h
//  SKCategories
//
//  Created by Soaurabh Kakkar on 20/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SKAlertViewDidDismissBlock)(NSUInteger buttonIndex);
typedef void (^SKAlertViewDidCancelBlock)(void);

@interface UIAlertView (Additions)

/*!
 *  Creates a UIAlertView with optional cancel and dismissal blocks
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param message - A message to be displayed
 *  @param cancelButtonTitle - Cancel button title
 *  @param otherButtons - Array of other buttons title strings
 *  @param onCancel - On cancel block to be executed
 *  @param onDismiss - On dismiss block to be executed
 *
 */
- (id)initWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle otherButtonTitles:(NSArray*)otherButtons onCancel:(SKAlertViewDidCancelBlock)onCancel onDismiss:(SKAlertViewDidDismissBlock)onDismiss;

/*!
 *  Creates a UIAlertView
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param message - A message to be displayed
 *  @param cancelButtonTitle - Cancel button title
 *
 */
+ (UIAlertView*)alertWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle;

/*!
 *  Creates a UIAlertView with optional cancel block
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param message - A message to be displayed
 *  @param cancelButtonTitle - Cancel button title
 *  @param cancelled - On cancel block to be executed
 *
 */
+ (UIAlertView*)alertWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle onCancel:(SKAlertViewDidCancelBlock)cancelled;

/*!
 *  Creates a UIAlertView with optional cancel and dismissal blocks
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param message - A message to be displayed
 *  @param cancelButtonTitle - Cancel button title
 *  @param otherButtons - Array of other buttons title strings
 *  @param cancelled - On cancel block to be executed
 *  @param dismissed - On dismiss block to be executed
 *
 */
+ (UIAlertView*)alertWithTitle:(NSString*)title message:(NSString*)message cancelButtonTitle:(NSString*)cancelButtonTitle otherButtonTitles:(NSArray*)otherButtons onCancel:(SKAlertViewDidCancelBlock)cancelled onDismiss:(SKAlertViewDidDismissBlock)dismissed;

@end
