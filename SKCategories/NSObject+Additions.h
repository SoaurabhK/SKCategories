//
//  NSObject+Additions.h
//  SKCategories
//
//  Created by Soaurabh Kakkar on 12/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Additions)

@property (nonatomic, strong)   id  additionalInfo; /*!< Additional data to be stored with the object through runtime. */

/*!
 *  Dispatches a block on the main queue.
 *  @note GCD thread safe
 *  @param block - A block to execute on the main thread.
 */
- (void)dispatchBlockOnMainQueue:(void (^)(void))block;

/*!
 *  Dispatches a block on the main queue after a delay.
 *  @note GCD thread safe
 *  @param delay - A time interval delay before execution
 *  @param block - A block to execute on the main thread after a delay.
 */
- (void)dispatchBlockOnMainQueueAfterDelay:(NSTimeInterval)delay block:(void (^)(void))block;

/*!
 *  Dispatches a block on the high priority queue.
 *  @note GCD thread safe
 *  @param block - A block to execute on the high priority thread.
 */
- (void)dispatchBlockOnHighPriorityQueue:(void (^)(void))block;

/*!
 *  Dispatches a block on the low priority queue after a delay.
 *  @note GCD thread safe
 *  @param block - A block to execute on the low priority thread.
 */
- (void)dispatchBlockOnLowPriorityQueue:(void (^)(void))block;

/*!
 *  Dispatches a block on the default priority queue after a delay.
 *  @note GCD thread safe
 *  @param block - A block to execute on the default priority thread.
 */
- (void)dispatchBlockOnDefaultPriorityQueue:(void (^)(void))block;

@end
