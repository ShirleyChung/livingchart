//
//  Drawable.h
//  LivingChart
//
//  Created by Shirley on 2016/6/17.
//  Copyright © 2016年 Shirley. All rights reserved.
//

#ifndef Drawable_h
#define Drawable_h

#import <UIKit/UIKit.h>

@protocol Drawable

@required
-(void)draw:(CGContextRef)context;

@optional
-(void)setRect:(CGRect)rect;

@end


#endif /* Drawable_h */
