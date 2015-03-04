//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSString *tempString;
    
    NSRange suffixRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    if (suffixRange.location == NSNotFound) {
        tempString = cheeseName;
    } else {
        tempString = [cheeseName substringToIndex:suffixRange.location];
    }
    
    return tempString;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSString *tempString;
    
    if (cheeseCount == 1) {
        tempString = [NSString stringWithFormat:@"%lu cheese", (long)cheeseCount];
    } else {
        tempString = [NSString stringWithFormat:@"%lu cheeses", (long)cheeseCount];
    }
    
    return tempString;
}

@end
