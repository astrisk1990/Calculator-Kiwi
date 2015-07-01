//
//  RPNStack.m
//  CalculatorStack
//
//  Created by zhangqiusheng on 15/5/28.
//  Copyright (c) 2015年 Gridsum. All rights reserved.
//

#import "RPNStack.h"

@implementation RPNStack

@synthesize data = _data;

-(id)init{
    
    if (self=[super init]) {
        _data = [[NSMutableArray alloc]initWithCapacity:4];
    }
    return self;
}

-(void)push:(double)numberToPush{

    [self.data addObject:
        [NSNumber numberWithDouble:numberToPush]];
}

-(double)top{

    return[[self.data lastObject]
     doubleValue];
}

-(double)pop{
    double poppedValue = [self top];
    if (![self.data lastObject]) {
        [NSException raise:@"RPNEmptyStackPopExecption"
                    format:@"pop was sent to an empty stack"];
    }
    [self.data removeLastObject];
    return poppedValue;
}

-(void)clear{

    [self.data removeAllObjects];
}

-(NSInteger)count{

    return [self.data count];
}

@end
