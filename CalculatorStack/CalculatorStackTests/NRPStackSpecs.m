//
//  NRPStackSpecs.m
//  CalculatorStack
//
//  Created by zhangqiusheng on 15/5/28.
//  Copyright (c) 2015年 Gridsum. All rights reserved.
//

#import "Kiwi.h"
#import "RPNStack.h"

SPEC_BEGIN(RPNStackSpec)

describe(@"The stack", ^{
    
    RPNStack *stack= [[RPNStack alloc]init];
    
    context(@"When created", ^{
        
        afterEach(^{
            [stack clear];
        });
        
        it(@"is not nil",^{
             [stack shouldNotBeNil];
         });
        
        it(@"is empty",^{
            [[[stack should]have:0]data];
        });
        
        it(@"return 0 for top",^{
            [[theValue([stack top]) should] beZero];
        });
        
        it(@"throw an execption when I pop an empty stack",^{
        
            [[theBlock(^{
                [stack pop];
            })should]
             raiseWithName:@"RPNEmptyStackPopExecption"];
        
        
        });
        
        it(@"allows me to add a double to it",^{
            [stack push:5.3];
            [[theValue([stack top]) should] equal:5.3
                                        withDelta:0.01];
        
        });
    
    });
    
    context(@"after pushing 4.7 on an empty stack", ^{
        
        beforeEach(^{
            [stack push:4.7];
        });
        
        it(@"has exactly one element",^{
        
            [[stack should] haveCountOf:1];
        });
        
        it(@" has 4.7 as top ",^{
        
            [[theValue([stack top]) should] equal:4.7 withDelta:0.01];
        
        });
        
        it(@"return 4.7 from pop then is empty",^{
        
            [[theValue([stack pop]) should] equal:4.7 withDelta:0.01];
        
        });
    
    });
    
   
});

SPEC_END




