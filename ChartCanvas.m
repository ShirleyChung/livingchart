//
//  ChartCanvas.m
//  LivingChart
//
//  Created by Shirley on 2016/6/14.
//  Copyright © 2016年 Shirley. All rights reserved.
//

#import "ChartCanvas.h"

@implementation ChartCanvas


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGAffineTransform t = CGContextGetCTM(context);
    
    t = CGAffineTransformInvert(t);
    CGContextConcatCTM(context, t);
    
    CGContextRestoreGState(context);
}


@end
