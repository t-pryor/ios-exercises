//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
  
  NSMutableString *mutableString = [NSMutableString string];
  
  if (number == otherNumber) {
    [mutableString appendString:[NSString stringWithFormat:@"%ld", number]];
    return mutableString;
  }
  
  // number should always be lower than otherNumber
  if (number > otherNumber) {
    NSInteger temp = number;
    number = otherNumber;
    otherNumber = temp;
  }
  
  for (NSInteger n = number; n <= otherNumber; n++) {
      [mutableString appendString:[NSString stringWithFormat:@"%ld", n]];
    }
  
  return mutableString;
}

@end
