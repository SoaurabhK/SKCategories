//
//  NSString+Additions.h
//  SKCategories
//
//  Created by Soaurabh Kakkar on 10/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Additions)

/*!
 *  @return A new string with the first character in upper case.
 */
- (NSString*)stringWithUpperCaseFirstCharacter;

/*!
 *  @return A new string with the first character in each word in upper case.
 */
- (NSString*)stringWithUpperCaseFirstCharacterOfEachWord;

/*!
 @return A new string trimmed with the whitespaceCharacterSet in beginning and end.
 */
- (NSString*)stringByTrimmingWhitespace;

/*!
 *  @return A new string trimmed with the newlineCharacterSet in beginning and end.
 */
- (NSString*)stringByTrimmingNewLine;

/*!
 *  @return A new string trimmed with the whitespaceCharacterSet. Nil is never returned. In case no characters is left, an empty string is returned.
 */
+ (NSString*)stringByTrimmingWhitespaceOnString:(NSString*)string;

/*!
 *  @return YES if the receiver has length > 0 after trimming whitespace.
 */
- (BOOL)hasCharactersAfterTrimmingWhitespaceCharacterSet;

/*!
 *  @return YES if the receiver has length > 0 after trimming newlines.
 */
- (BOOL)hasCharactersAfterTrimmingNewLineCharacterSet;

/*!
 *  @return YES if the receiver has length > 0 after trimming whitespace. Also returns NO if string parameter is nil.
 */
+ (BOOL)hasCharactersAfterTrimmingWhitespaceCharacterSetOnString:(NSString*)string;

/*!
 *  @return YES if the receiver has length > 0 after trimming with the specified character set.
 */
- (BOOL)hasCharactersAfterTrimmingCharactersInSet:(NSCharacterSet*)set;

/*!
 *  @return YES if the receiver has length > 0 after trimming with the specified character set. Also returns NO if string parameter is nil.
 */
+ (BOOL)hasCharactersAfterTrimmingCharactersInSet:(NSCharacterSet*)set onString:(NSString*)string;

@end

extern NSString * const _SKStringEmpty;
