//
//  NSString+Additions.m
//  SKCategories
//
//  Created by Soaurabh Kakkar on 10/02/17.
//  Copyright © 2017 Soaurabh Kakkar. All rights reserved.
//

#import "NSString+Additions.h"

NSString * const _SKStringEmpty     = @"";

@implementation NSString (Additions)

#pragma mark String Cases
- (NSString*)stringWithUpperCaseFirstCharacter
{
    if ([self length] > 0) {
        return [self stringByReplacingCharactersInRange:NSMakeRange(0,1) withString:[[self substringToIndex:1] uppercaseString]];
    }
    
    return _SKStringEmpty;
}

- (NSString*)stringWithUpperCaseFirstCharacterOfEachWord
{
    static NSString *space = @" ";
    
    NSArray *words = [self componentsSeparatedByString:space];
    NSMutableArray *newWords = [[NSMutableArray alloc] init];
    
    for (NSString *word in words) {
        [newWords addObject:[word stringWithUpperCaseFirstCharacter]];
    }
    
    return [newWords componentsJoinedByString:space];
}

#pragma mark String Length, Empty, Trimming functions

- (NSString*)stringByTrimmingWhitespace
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSString*)stringByTrimmingNewLine
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
}

+ (NSString*)stringByTrimmingWhitespaceOnString:(NSString*)string
{
    if (string) {
        return [string stringByTrimmingWhitespace];
    }
    else {
        return _SKStringEmpty;
    }
}

- (BOOL)hasCharactersAfterTrimmingWhitespaceCharacterSet
{
    return [self hasCharactersAfterTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (BOOL)hasCharactersAfterTrimmingNewLineCharacterSet
{
    return [self hasCharactersAfterTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

+ (BOOL)hasCharactersAfterTrimmingWhitespaceCharacterSetOnString:(NSString*)string
{
    return string != nil && [string hasCharactersAfterTrimmingWhitespaceCharacterSet];
}

- (BOOL)hasCharactersAfterTrimmingCharactersInSet:(NSCharacterSet*)set
{
    return [[self stringByTrimmingCharactersInSet:set] length] > 0;
}

+ (BOOL)hasCharactersAfterTrimmingCharactersInSet:(NSCharacterSet*)set onString:(NSString*)string
{
    return string != nil && [string hasCharactersAfterTrimmingCharactersInSet:set];
}

@end
