//
//  PieChart.h
//  LivingChart
//
//  Created by Shirley on 2016/6/15.
//  Copyright © 2016年 Shirley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIkit.h>
#import "Drawable.h"

@interface PieChart : NSObject<Drawable>
{
    CGRect mRect;
}

-(void)setRect:(CGRect) rt;

-(void)draw:(CGContextRef)context;

@end
