//
//  ChartCanvas.h
//  LivingChart
//
//  Created by Shirley on 2016/6/14.
//  Copyright © 2016年 Shirley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PieChart.h"

@interface ChartCanvas : UIView
{
    PieChart *mPie;
}

-(id)initWithFrame:(CGRect)frame;
-(id)init;
-(id)initWithCoder:(NSCoder *)aDecoder;

-(void)initialize;

@end
