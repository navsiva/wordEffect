//
//  main.m
//  wordEffects
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-04.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        InputHandler *menuInputHandler = [[InputHandler alloc] init];
        
        BOOL running = YES;
        
        while (running){
        
            menuInputHandler.inputDictionary = @{@"menu" : @"Please select a WORD EFFECT! Uppercase - Lowercase - Numberize - Canadianize - Respond - De-space it - Wordcount"};

            NSDictionary *outputDictionary = [menuInputHandler handleInput];
            
            NSLog(@"%@", outputDictionary);
            
            NSString *menuChoice = [outputDictionary[@"menu"] lowercaseString];

            if ([menuChoice isEqual:@"uppercase"]){
                
                menuInputHandler.inputDictionary = @{@"uppercase" : @"Enter a quiet word to make it LOUD!"};

                NSDictionary *outputDictionary = [menuInputHandler handleInput];
                
                NSString *outputString = [(outputDictionary[@"uppercase"]) uppercaseString];
                
                NSLog(@"%@", outputString);
                
                
            }
            
            else if ([menuChoice isEqual:@"lowercase"]){
                
                menuInputHandler.inputDictionary = @{@"lowercase" : @"Enter a LOUD word to make it quiet!"};
                
                NSDictionary *outputDictionary = [menuInputHandler handleInput];
                
                NSString *outputString = [(outputDictionary[@"lowercase"]) lowercaseString];
                
                NSLog(@"%@", outputString);
                
            }
        
            else if ([menuChoice isEqual:@"numberize"]){
                
                menuInputHandler.inputDictionary = @{@"numberize" : @"Enter a word to make it a NUMBER!"};
                
                NSDictionary *outputDictionary = [menuInputHandler handleInput];
                
                NSString *outputString = (outputDictionary[@"numberize"]);
                
                long outputLength = outputString.length;

                
                NSMutableString *strResult = [[NSMutableString alloc] init];

                
                for(int i = 0; i < outputLength; i++) {
                    
                    int asciiCode = [outputString characterAtIndex:i];
                    
                    [strResult appendFormat:@"%d", asciiCode];
                }

                NSLog(@"%@", strResult);

            }
            
            else if ([menuChoice isEqual:@"canadianize"]){
                
                menuInputHandler.inputDictionary = @{@"canadianize" : @"Enter a word to make it Canadian, eh!"};
                
                NSDictionary *outputDictionary = [menuInputHandler handleInput];
                
                NSString *strCanadian = @", eh!";
                
                NSString *outputString = [(outputDictionary[@"canadianize"]) stringByAppendingString:strCanadian];
                
                NSLog(@"%@", outputString);

                
            }
            
            else if ([menuChoice isEqual:@"respond"]){
                
                menuInputHandler.inputDictionary = @{@"respond" : @"Enter a word for a response!"};
                
                NSDictionary *outputDictionary = [menuInputHandler handleInput];
                
                
                    if ([(outputDictionary[@"respond"]) hasSuffix:@"?"]){
                        
                        NSLog(@"I Don't Know.");
                        
                    }
                    else if ([(outputDictionary[@"respond"]) hasSuffix:@"!"]){
                        
                        NSLog(@"Whoa! Calm down.");
                        
                    }
            }
            
            else if ([menuChoice isEqual:@"de-space it"]){
                
                menuInputHandler.inputDictionary = @{@"de-space it" : @"Enter a phrase to removewhitespaces!"};
                

                NSDictionary *outputDictionary = [menuInputHandler handleInput];
                
                NSString *outputString = [(outputDictionary[@"de-space it"]) stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                
                NSLog(@"%@", outputString);
                
            }
            
            else if ([menuChoice isEqual:@"wordcount"]){
                
                menuInputHandler.inputDictionary = @{@"wordcount" : @"Enter a phrase to count the number of words!"};
                
                NSDictionary *outputDictionary = [menuInputHandler handleInput];
                
                
                NSArray *words = [(outputDictionary[@"wordcount"]) componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                
                NSInteger wordCount = [words count];
                
                NSInteger characterCount = 0;
                
                for (NSString *word in words) {
                    
                    characterCount += [word length];
                    
                }
                
                NSLog(@"%ld", (long)wordCount);
                
            }
        }
        
        
    }
    return 0;

}






