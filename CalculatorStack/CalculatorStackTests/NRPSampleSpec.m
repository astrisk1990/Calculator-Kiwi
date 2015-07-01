//
//  NRPSampleSpec.m
//  CalculatorStack
//
//  Created by zhangqiusheng on 15/6/13.
//  Copyright 2015年 Gridsum. All rights reserved.
//

#import "Kiwi.h"
#import "RPNCalculator.h"

SPEC_BEGIN(SpecName)

describe(@"RPNCalculator", ^{
    
    registerMatchers(@"BG"); // Registers BGTangentMatcher, BGConvexMatcher, etc.
    
    context(@"a state the component is in", ^{
        
        let(calculator, ^{ // Occurs before each enclosed "it"
           
            return [[RPNCalculator alloc]init];;
        });
        
        beforeAll(^{ // Occurs once
            NSLog(@"beforeAll");
        });
        
        afterAll(^{ // Occurs once
            NSLog(@"afterAll");
        });
        
        beforeEach(^{ // Occurs before each enclosed "it"
            NSLog(@"beforeEach");
        });
        
        afterEach(^{ // Occurs after each enclosed "it"
             NSLog(@"afterEach");
        });
        
        
        specify(^{
            [[calculator shouldNot] beNil];
        });
        
        context(@"inner context", ^{
            it(@"does another thing", ^{
            });
            
            pending(@"something unimplemented", ^{
            });
        });
    });
});

SPEC_END
