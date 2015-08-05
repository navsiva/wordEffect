//
//  InputHandler.h
//  wordEffects
//
//  Created by Navaneethan Sivabalaviknarajah on 2015-08-04.
//  Copyright (c) 2015 Navaneethan Sivabalaviknarajah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property (nonatomic, strong) NSDictionary *inputDictionary;

-(NSMutableDictionary *)handleInput;

@end
