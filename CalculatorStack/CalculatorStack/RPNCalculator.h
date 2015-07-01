//
//  RPNCalculator.h
//  CalculatorStack
//
//  Created by zhangqiusheng on 15/6/1.
//  Copyright (c) 2015年 Gridsum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RPNCalculator : NSObject
-(void)enter:(double)enteredNumber;
-(void)clear;
-(double)moveRegisteredDown;
#pragma unaryOperation
-(double)squareRoot;
-(double)square;
-(double)opposite;
-(double)reciprocal;
#pragma binaryOperation
-(double)add;
-(double)substract;
-(double)multiply;
-(double)devide;
@end
