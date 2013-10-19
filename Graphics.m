//
//  Graphics.m
//  CoreGraphicsDemo
//
//  Created by IndiaNIC on 01/10/13.
//  Copyright (c) 2013 IndiaNIC. All rights reserved.
//

#import "Graphics.h"

@implementation Graphics

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
//  [self drawLine];
//  [self drawSquare];
//  [self drawRectangle];
//  [self drawM];
//  [self drawEllipse];
//  [self drawArc];
//  [self drawCubicCurve];
//  [ self drawpoint];
//  [self drawQuadrantCurve];
//  [self drawDashedLine];
//  [self drawImageAtPoint];
//  [self drawImageInRect];
//  [self drawTextAtPoint];
  [self drawTextInRect];
//    [self drawHouse];
//    [self drawSun];
    
}

-(void)drawLine
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 5.0);
    CGColorSpaceRef colorSpace=CGColorSpaceCreateDeviceRGB();
    CGFloat components[]={0.0,0.0,1.0,1.0};
    CGColorRef color=CGColorCreate(colorSpace, components);
    CGContextSetStrokeColorWithColor(context, color);
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, self.frame.size.width,self.frame.size.height);
    CGContextStrokePath(context);
    CGColorSpaceRelease(colorSpace);
    CGColorRelease(color);
}
-(void)drawSquare
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 50, 50);
    CGContextAddLineToPoint(context, 200, 50);
    CGContextAddLineToPoint(context, 200, 200);
    CGContextAddLineToPoint(context, 50, 200);
    CGContextAddLineToPoint(context, 50, 50);
    CGContextStrokePath(context);
    }
-(void)drawRectangle
{
    
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextMoveToPoint(context, 50, 50);
    CGContextAddLineToPoint(context, 300, 50);
    CGContextAddLineToPoint(context, 300, 200);
    CGContextAddLineToPoint(context, 50, 200);
    CGContextAddLineToPoint(context, 50, 50);
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextFillPath(context);
    
}
-(void)drawM
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
      CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 10, 20);
    CGContextAddLineToPoint(context, 10,50);
    CGContextMoveToPoint(context, 10, 20);
    CGContextAddLineToPoint(context, 25, 35);
    CGContextAddLineToPoint(context, 40,20);
    CGContextAddLineToPoint(context, 40, 50);
     CGContextStrokePath(context);

}
-(void) drawEllipse
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGRect rectangle=CGRectMake(10, 50, 300, 200);
    CGContextAddEllipseInRect(context, rectangle);
     CGContextStrokePath(context);
}
 -(void) drawArc
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddArcToPoint(context, 100,200, 300,200, 100);
     CGContextStrokePath(context);
    
}
 -(void)drawCubicCurve
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 10,10);
    CGContextAddCurveToPoint(context, 0, 50, 300, 250, 300, 400);
    CGContextStrokePath(context);
    
}
-(void)drawpoint
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextFillRect(context, CGRectMake(50, 50, 10, 10));
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextFillPath(context);

}
- (void)drawQuadrantCurve{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextSetStrokeColorWithColor(context,[UIColor blueColor].CGColor);
    CGContextMoveToPoint(context, 10, 200);
    CGContextAddQuadCurveToPoint(context, 200, 10, 300, 200);
    CGContextStrokePath(context);
}
-(void)drawDashedLine
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context,10.0);
    CGContextSetStrokeColorWithColor(context,[UIColor blueColor].CGColor);
    
    CGFloat dashArray[] = {1,1,2,2};
    CGContextSetLineDash(context, 1, dashArray, 4);
    CGContextMoveToPoint(context, 10, 200);
    CGContextAddQuadCurveToPoint(context, 200, 10, 300, 200);
    CGContextStrokePath(context);
}
-(void)drawImageAtPoint
{
    UIImage *myImage = [UIImage imageNamed:@"image.jpg"];
    CGPoint imagePoint = CGPointMake(0, 0);
    [myImage drawAtPoint:imagePoint];

    
}
-(void)drawImageInRect
{
    UIImage *myImage=[UIImage imageNamed:@"image.jpg"];
    //    CGRect imageRect=[[UIScreen mainScreen] bounds];
    CGRect imageRect = CGRectMake(0, 0, 320, 300);
    [myImage drawInRect:imageRect];
}


- (void)drawTextAtPoint{
    NSString *strText = @"Hello";
    CGPoint textPoint = CGPointMake(100,100);
    [strText drawAtPoint:textPoint withFont:[UIFont systemFontOfSize:30]];
}

-(void)drawTextInRect{
   
    NSString *strText = @"AMIT SOMANI";
    CGRect textRect = CGRectMake(155, 20, 5, 999);
    [[UIColor redColor] setFill];
    [strText drawInRect:textRect withFont:[UIFont systemFontOfSize:30] lineBreakMode:NSLineBreakByWordWrapping];

}
-(void)drawHouse
{
    CGContextRef context=UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextMoveToPoint(context, 10, 300);
    CGContextAddLineToPoint(context, 10,400);
    CGContextAddLineToPoint(context, 100,400);
    CGContextAddLineToPoint(context, 100,300);
    CGContextAddLineToPoint(context, 10,300);
    
    CGContextMoveToPoint(context, 100,400);
    CGContextAddLineToPoint(context,280,400);
    CGContextAddLineToPoint(context, 280,300);
    CGContextAddLineToPoint(context, 100,300);
    
    CGContextMoveToPoint(context, 40,400);
    CGContextAddLineToPoint(context,40,330);
    CGContextAddLineToPoint(context, 70,330);
    CGContextAddLineToPoint(context, 70,400);
    
    CGContextMoveToPoint(context,10,300);
    CGContextAddLineToPoint(context,45,200);
    CGContextAddLineToPoint(context, 100,300);
   
    CGContextMoveToPoint(context,45,200);
    CGContextAddLineToPoint(context,280,200);
    CGContextAddLineToPoint(context, 280,300);
    
    CGContextMoveToPoint(context,180,360);
    CGContextAddLineToPoint(context,200,360);
    CGContextAddLineToPoint(context,200,340);
    CGContextAddLineToPoint(context,180,340);
    CGContextAddLineToPoint(context,180,360);
    CGContextStrokePath(context);
    
    UIImage *myImage=[UIImage imageNamed:@"image2.jpg"];
    CGRect imageRect = CGRectMake(110, 320, 60, 80);
    [myImage drawInRect:imageRect];

    NSString *strText = @"Welcome To Home";
    CGPoint textPoint = CGPointMake(100,250);
    [strText drawAtPoint:textPoint withFont:[UIFont systemFontOfSize:16]];
    
}
-(void)drawSun
{
    
}



@end
