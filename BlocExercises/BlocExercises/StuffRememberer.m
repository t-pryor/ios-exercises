//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
  
  // log arrayToRemember pointer address
  // should be same as someArray (pass by reference)
  NSLog(@"arrayToRember points to: %x",(int)arrayToRemember);
  
  self.rememberArray = arrayToRemember;
  
  // log self.rememberArray address
  // should be same as arrayToRemember
  NSLog(@"self.rememberArray points to %x",(int)self.rememberArray);
  
  // self.rememberArray points to same address as
  // someArray (in StuffRemembererTests.m)
  
  NSLog(@"%@", self.rememberArray);
}



- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
  // cArray is specified with copy attribute in .h file
  // when assigning, NSMutableArray's copy method used
  // same as:
  //   self.cArray = [arrayToCopy copy]
  
  // this assigns an immutable array to NSMutableArray cArray
  // NSMutableArray is an NSArray
  self.cArray = arrayToCopy;
  
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
  
  // CGFloat is primitive data type
  // typedef'd to either float or double depending on host computer's architecture
  // self.myFloat holds the same value as floatToRemember
  
  self.myFloat = floatToRemember;


}

- (NSMutableArray *) arrayYouShouldRemember {
  
  // self.rememberArray points to same address as
  // someArray (in StuffRemembererTests.m)
  // self.rememberArray points to an NSMutableArray
  // this pointer is returned and stored in otherArray (in StuffRememberTests.m)
  return self.rememberArray;
  
}

- (NSMutableArray *) arrayYouShouldCopy {
  
  return self.cArray;
  
}

- (CGFloat) floatYouShouldRemember {
  
  NSLog(@"myFloat address %i", (int)&_myFloat);
  
  return self.myFloat;

}

@end