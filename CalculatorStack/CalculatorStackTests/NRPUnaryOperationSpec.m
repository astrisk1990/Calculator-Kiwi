//
//  NRPUnaryOperationSpec.m
//  CalculatorStack
//
//  Created by zhangqiusheng on 15/6/1.
//  Copyright (c) 2015年 Gridsum. All rights reserved.
//

#import "Kiwi.h"
#import "RPNCalculator.h"

SPEC_BEGIN(RPNUnaryOperationSpec)

describe(@"Calculator", ^{
    
    context(@"withed the number 25 entered",^{
        
        RPNCalculator *calculator = [[RPNCalculator alloc]init];
    
        beforeEach(^{
            [calculator enter:25];
        });
        
        afterEach(^{
            [calculator clear];
        });
        
        it(@"should contains exactly one element",^{
            [[theValue([calculator moveRegisteredDown]) should]equal:25
                                                           withDelta:0.01];
            [[theBlock(^{
                [calculator moveRegisteredDown];
            })should]raiseWithName:@"RPNEmptyStackPopExecption"];
        });
        
        it(@"has square root 5",^{
            [[theValue([calculator squareRoot]) should]equal:5
                                                   withDelta:0.01];
        });
        
        it(@"has square 625",^{
           [[theValue([calculator square])should]equal:625
                                             withDelta:0.01];
           });
        
        it(@"has opposite -25.", ^{
            [[theValue([calculator opposite])should]equal:-25
                                                withDelta:0.01];
        });
        it(@"has reciprocal .04.", ^{
            [[theValue([calculator reciprocal])should]equal:0.04
                                                  withDelta:0.01];
        });
        it(@"reports NAN for the square root of a negative", ^{
            
            
        
        });
        it(@"returns INFINITY for the reciprocal of 0", ^{
        
            
        
        });
    });

});

SPEC_END
