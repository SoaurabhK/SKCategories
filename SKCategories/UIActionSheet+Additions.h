//
//  UIActionSheet+Additions.h
//  SKCategories
//
//  Created by Soaurabh Kakkar on 20/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^SKActionSheetDidDismissBlock)(NSUInteger buttonIndex);
typedef void (^SKActionSheetDidCancelBlock)(void);

@interface UIActionSheet (Additions)

/*!
 *  Creates a UIActionSheet with optional cancel and dismissal blocks
 *
 *  @note Must be used on the main thread
 *
 *  @param title - Title of the actionsheet
 *  @param cancelButtonTitle - Cancel button title
 *  @param destructiveButtonTitle - Dismissal button title
 *  @param otherButtons - Array of other buttons title strings
 *  @param onCancel - On cancel block to be executed
 *  @param onDismiss - On dismiss block to be executed
 *
 */
- (id)initWithTitle:(NSString*)title
  cancelButtonTitle:(NSString*)cancelButtonTitle
destructiveButtonTitle:(NSString*)destructiveButtonTitle
  otherButtonTitles:(NSArray*)otherButtons
           onCancel:(SKActionSheetDidCancelBlock)onCancel
          onDismiss:(SKActionSheetDidDismissBlock)onDismiss;
@end
