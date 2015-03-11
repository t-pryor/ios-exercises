//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
  //return [characterDictionary objectForKey:@"favorite drink"];
  return characterDictionary[@"favorite drink"];
  
  // Steve: is there a preferred syntax?
  
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
  
  NSMutableArray *faveDrinks = [[NSMutableArray alloc] init];
  
  for (NSDictionary *character in charactersArray) {
    [faveDrinks addObject: character[@"favorite drink"]];
  }
  return faveDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
  
    NSMutableDictionary *temp = [[NSMutableDictionary alloc] init];
    temp = [characterDictionary mutableCopy];
    [temp setObject: @"Reports of my assimilation are greatly exagerated" forKey: @"quote"];
    return [temp copy];
     
    // Steve: is this the normal way to add a key-value pair to
    // an immutable NSDictionary? Is there a way without creating
    // a mutable temp dictionary?
  
    // [temp copy] would return an immutable NSDictionary object,
    // Would this be preferred over just returning temp?
  
}

@end
