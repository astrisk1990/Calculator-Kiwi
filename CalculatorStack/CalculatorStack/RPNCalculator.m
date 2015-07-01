//
//  RPNCalculator.m
//  CalculatorStack
//
//  Created by zhangqiusheng on 15/6/1.
//  Copyright (c) 2015年 Gridsum. All rights reserved.
//

#import "RPNCalculator.h"
#import "RPNStack.h"
#import "math.h"

@interface RPNCalculator()

@property(strong) RPNStack *stack;

-(double) performUnaryOperation:(double (^)(double a)) calculation;
-(double)performBinaryOperation:(double (^)(double a,double b)) calculation;
@end

@implementation RPNCalculator
@synthesize stack = _stack;

-(id)init{
    if (self=[super init]) {
        
        _stack = [[RPNStack alloc]init];
    }
    return self;
}

-(void)enter:(double)enteredNumber{

    [self.stack push:enteredNumber];
}

-(void)clear{
    [self.stack clear];
}

-(double)moveRegisteredDown{

    double  popNumber = [self.stack pop];
    return  popNumber;

}

#pragma mark - Operator utilities



-(double)results:(double)value{
    [self.stack push:value];
    return value;
}

//- (double) performUnaryOperation:(double (^)(double a)) calculation {
//    return [self results:calculation([self.stack pop])];
//}

-(double)performUnaryOperation: (double (^)(double a)) calculation{
    return [self results:calculation([self.stack pop])];
}

-(double)performBinaryOperation:(double (^)(double a,double b)) calculation{

    return [self results:calculation([self.stack pop],[self.stack pop])];
}

-(double)squareRoot{
    
    return [self performUnaryOperation:^double(double a){
        
        return sqrt(a);
    }];

}

-(double)square{
    
    return [self performUnaryOperation:^double(double a){
        return a*a;
    }];
  
}

-(double)opposite{
    return [self performUnaryOperation:^double(double a){
        return -a;
    }];
}

-(double)reciprocal{
    
    return [self performUnaryOperation:^double(double a){
        return 1/a;
    }];
}


#pragma binaryOperation

-(double)add{
    return [self performBinaryOperation:^double(double a,double b){
        return a+b;
    }];
}

-(double)substract{

    return [self performBinaryOperation:^double(double a,double b){
        return a-b;
    }];
}
-(double)multiply{
    return [self performBinaryOperation:^double(double a,double b){
        return a*b;
    }];
}
-(double)devide{

    return [self performBinaryOperation:^double(double a,double b){
        return a/b;
    }];
}
@end
