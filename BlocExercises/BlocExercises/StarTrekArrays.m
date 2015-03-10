//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
  
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
  
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
  
  // Hi Steve:
  // Some questions:
  
  // Why do we need to initialize as array of sortDescriptors?
  // What's wrong with my block?
  // so many ways to sort: book suggests blocks for performance reasons
  // Which is best?
  // Descriptors
  // Selectors
  // Comparators
  
    //https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/SortDescriptors/Articles/Creating.html#//apple_ref/doc/uid/20001845-BAJEAIEE
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey: nil ascending: YES];
    NSArray *sortDescriptors = @[sortDescriptor];
    return [characterArray sortedArrayUsingDescriptors:sortDescriptors];
  
  //didn't work:
  /*
  return [characterArray sortedArrayUsingComparator:
      //      ^(id obj1, id obj2) {
       //       return [[obj1 name] compare: [obj2 name]];
  
         //   }];
   */
}
 


- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
  
  // QUESTIONS:
  
  // why does name == @"Worf, son of Mogh, slayer of Gowron" work (I can use instead of isEqualToString);
  // Doesn't this compare memory addresses? The strings pulled out of the characterArray should not have the same memory address as a string literal created in this method

  
  /*
  // WORKS: SEEMS LIKE THIS IS MOST ELEGANT:
  for (NSString *name in characterArray) {
    if ([name isEqualToString: @"Worf, son of Mogh, slayer of Gowron"]) {
      return YES;
    }
  }
  return NO;
  */
  
  // THIS WORKS (and is suggested by this lesson) but seems klugy compared to isEqualToString version. Is this better performing?
  NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS 'Worf, son of Mogh, slayer of Gowron'"];
  if ([[characterArray filteredArrayUsingPredicate:containsWorf] count] != 0) {
    return YES;
  }
  
  return NO;
  
}

@end
