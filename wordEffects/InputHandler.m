//
//  InputHandler.m
//  wordEffects
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-04.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSMutableDictionary *)handleInput {
    
    NSMutableDictionary *outputDictionary = [[NSMutableDictionary alloc] init];
    
   
     for (NSString *key in self.inputDictionary) {
         
         NSLog(@"%@", self.inputDictionary[key]);

         char inputChars[40];
         
         fgets (inputChars, 40, stdin);
         
         NSString *userInput = [NSString stringWithCString:inputChars encoding:NSASCIIStringEncoding];
         
         userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

         [outputDictionary setObject:userInput forKey:key];

        
     }
    
    return outputDictionary;
    
    
}

@end
