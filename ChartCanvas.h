//
//  ChartCanvas.h
//  LivingChart
//
//  Created by Shirley on 2016/6/14.
//  Copyright © 2016年 Shirley. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Drawable.h"

@interface ChartCanvas : UIView
{
    id<Drawable> mGraphic;
}

-(id)initWithFrame:(CGRect)frame;
-(id)init;
-(id)initWithCoder:(NSCoder *)aDecoder;

-(void)initialize;

@end
