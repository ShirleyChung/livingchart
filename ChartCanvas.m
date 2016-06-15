//
//  ChartCanvas.m
//  LivingChart
//
//  Created by Shirley on 2016/6/14.
//  Copyright © 2016年 Shirley. All rights reserved.
//

#import "ChartCanvas.h"

@implementation ChartCanvas

-(id)init
{
    [self initialize];
    return [super init];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    [self initialize];
    return [super initWithCoder:aDecoder];
}

-(id)initWithFrame:(CGRect)frame
{
    [self initialize];
    
    return [super initWithFrame:frame];
}

-(void)initialize
{
    mPie = [[PieChart alloc] init];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    /*座標系統轉換*/
    CGAffineTransform t = CGContextGetCTM(context);
    t = CGAffineTransformInvert(t);
    CGContextConcatCTM(context, t);
    
    /*Drawing Start*/
    
    [mPie draw:context];
    
    CGContextMoveToPoint(context, 10, 100);
    CGContextAddLineToPoint(context, 200, 150);
    CGContextDrawPath(context, kCGPathStroke);
    
    /*Drawing End*/
    
    CGContextRestoreGState(context);
}


@end
