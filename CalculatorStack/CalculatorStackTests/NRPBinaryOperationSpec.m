//
//  NRPBinaryOperationSpec.m
//  CalculatorStack
//
//  Created by zhangqiusheng on 15/6/2.
//  Copyright (c) 2015年 Gridsum. All rights reserved.
//

#import "RPNCalculator.h"
#import "Kiwi.h"

SPEC_BEGIN(NRPBinaryOperationSpec)

describe(@"calculator", ^{
    
    RPNCalculator *calculator = [[RPNCalculator alloc]init];
    
    context(@"with the numbers 60 and 5 entered", ^{
        
        beforeEach(^{
            [calculator enter:5];
            [calculator enter:60];
            
        });
        
        afterEach(^{
            [calculator clear];
        });
    
        it(@"exactly has the two numbers", ^{
            
            
            [[theValue([calculator moveRegisteredDown]) should]equal:60
                                                           withDelta:0.01];
            [[theValue([calculator moveRegisteredDown]) should]equal:5
                                                           withDelta:0.01];
            
            [[theBlock(^{
                [calculator moveRegisteredDown];
            })should]raiseWithName:@"RPNEmptyStackPopExecption"];
        
        });
        
        it(@"return 65 as the sum", ^{
        
            [[theValue([calculator add])should]equal:65 withDelta:0.01];
        
        });
        
        it(@"return 60 as the difference",^{
        
            [[theValue([calculator substract])should]equal:55 withDelta:0.01];
        });
        
        
        it(@"return 300 as the product",^{
            [[theValue([calculator multiply])should]equal:300 withDelta:0.01];
        });
        
        
        it(@"return 12 as the quetient", ^{
        
            [[theValue([calculator devide])should]equal:12 withDelta:0.01];
        });
        
        
        it(@"reports INFINITY when dividing by zero" , ^{
        
        });
    });

});

SPEC_END
