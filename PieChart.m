//
//  PieChart.m
//  LivingChart
//
//  Created by Shirley on 2016/6/15.
//  Copyright © 2016年 Shirley. All rights reserved.
//

#import "PieChart.h"

@implementation PieChart

-(id)init
{
    mRect = CGRectMake(0, 0, 100, 100);
    
    return self;
}

-(void)setRect:(CGRect) rt
{
    self->mRect = rt;
}

-(void)draw:(CGContextRef) context
{
    NSLog(@"PieChart draw");
    
//    CGContextSaveGState(context);

    CGContextSetRGBFillColor(context, 1, 0, 0, 0.5);
    CGContextAddEllipseInRect(context, CGRectMake(10, 10, 200, 150));
    CGContextDrawPath(context, kCGPathStroke);
    
    CGContextFillEllipseInRect(context, self->mRect);
    
 //   CGContextRestoreGState(context);
}

@end
