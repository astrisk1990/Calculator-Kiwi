//
//  RPNStack.h
//  CalculatorStack
//
//  Created by zhangqiusheng on 15/5/28.
//  Copyright (c) 2015年 Gridsum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RPNStack : NSObject
-(void)push:(double)numberToPush;
-(double)top;
-(void)clear;
-(double)pop;
@end

@interface RPNStack()
    @property(nonatomic,retain) NSMutableArray *data;
@end
