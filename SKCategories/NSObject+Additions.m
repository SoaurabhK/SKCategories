//
//  NSObject+Additions.m
//  SKCategories
//
//  Created by Soaurabh Kakkar on 12/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import "NSObject+Additions.h"
#import <objc/runtime.h>

static const char _key_additionalInfo;

@implementation NSObject (Additions)

#pragma mark Additional info associated through runtime to NSObject
- (id)additionalInfo
{
    return objc_getAssociatedObject(self, &_key_additionalInfo);
}

- (void)setAdditionalInfo:(id)additionalInfo
{
    objc_setAssociatedObject(self, &_key_additionalInfo, additionalInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark Threading convenience
- (void)dispatchBlockOnMainQueue:(void (^)(void))block
{
    dispatch_async(dispatch_get_main_queue(), block);
}

- (void)dispatchBlockOnMainQueueAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block
{
    int64_t delta = (int64_t)(1.0e9 * delay);
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delta), dispatch_get_main_queue(), block);
}

- (void)dispatchBlockOnHighPriorityQueue:(void (^)(void))block
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), block);
}

- (void)dispatchBlockOnDefaultPriorityQueue:(void (^)(void))block
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block);
}

- (void)dispatchBlockOnLowPriorityQueue:(void (^)(void))block
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), block);
}

- (void)dispatchBlockOnBackgroundPriorityQueue:(void (^)(void))block
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), block);
}

@end
