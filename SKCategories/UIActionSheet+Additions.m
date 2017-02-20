//
//  UIActionSheet+Additions.m
//  SKCategories
//
//  Created by Soaurabh Kakkar on 20/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import "UIActionSheet+Additions.h"
#import <objc/runtime.h>

static const char __dismissBlock;
static const char __cancelBlock;

@interface UIActionSheet(_Additions)<UIActionSheetDelegate>
@property (nonatomic, copy) SKActionSheetDidDismissBlock dismissBlock;
@property (nonatomic, copy) SKActionSheetDidCancelBlock cancelBlock;
@end

@implementation UIActionSheet (Additions)

- (id)initWithTitle:(NSString*)title
  cancelButtonTitle:(NSString*)cancelButtonTitle
destructiveButtonTitle:(NSString*)destructiveButtonTitle
  otherButtonTitles:(NSArray*)otherButtons
           onCancel:(SKActionSheetDidCancelBlock)onCancel
          onDismiss:(SKActionSheetDidDismissBlock)onDismiss
{
    self = [self initWithTitle:title delegate:self cancelButtonTitle:nil destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:nil];
    
    if (self)
    {
        for(NSString *buttonTitle in otherButtons) {
            [self addButtonWithTitle:buttonTitle];
        }
        
        [self addButtonWithTitle:cancelButtonTitle];
        [self setCancelButtonIndex:[otherButtons count] + (destructiveButtonTitle ? 1 : 0)];
        
        // Will store the cancel and dismiss block in the runtime
        self.cancelBlock = onCancel;
        self.dismissBlock = onDismiss;
    }
    
    return self;
}

#pragma mark - UIActionSheetDelegate

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == [actionSheet cancelButtonIndex])
    {
        if (actionSheet.cancelBlock) {
            actionSheet.cancelBlock();
        }
    }
    else
    {
        if (actionSheet.dismissBlock) {
            actionSheet.dismissBlock(buttonIndex);
        }
    }
}

#pragma mark - Additional block properties

- (void)setDismissBlock:(SKActionSheetDidDismissBlock)dismissBlock
{
    objc_setAssociatedObject(self, &__dismissBlock, dismissBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (SKActionSheetDidDismissBlock)dismissBlock
{
    return objc_getAssociatedObject(self, &__dismissBlock);
}

- (void)setCancelBlock:(SKActionSheetDidCancelBlock)cancelBlock
{
    objc_setAssociatedObject(self, &__cancelBlock, cancelBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (SKActionSheetDidCancelBlock)cancelBlock
{
    return objc_getAssociatedObject(self, &__cancelBlock);
}

@end
