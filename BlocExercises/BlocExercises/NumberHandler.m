//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
  //this makes tests pass, but what about doubles, floats etc.?
  
  int temp = [number intValue];
  temp *= 2;
  return [NSNumber numberWithInt:temp];
  
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
  
  NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
  
  for (NSInteger i = number; i <= otherNumber; i++) {
    NSNumber *temp = [NSNumber numberWithInteger: i];
    [mutableArray addObject:temp];
  }
  
  // is returning a copy of a mutableArray the best solution here?
  return [mutableArray copy];
  
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
  
  // would sorting first be a better solution?
  
  NSInteger temp = [arrayOfNumbers[0] integerValue];
  
  for (int i = 1; i < [arrayOfNumbers count]; i++) {
    if ([arrayOfNumbers[i] integerValue] < temp) {
      temp = [arrayOfNumbers[i] integerValue];
    }
  }
    
  return temp;
}

@end
