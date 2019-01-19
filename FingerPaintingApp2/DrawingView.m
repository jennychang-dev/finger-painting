//
//  DrawingView.m
//  FingerPaintingApp2
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "DrawingView.h"
#import "DrawLineSegment.h"

@interface DrawingView()

@property (nonatomic) NSMutableArray<DrawLineSegment *> *line;
@property (nonatomic) UIColor *drawColor;

@end

@implementation DrawingView

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        _line = [NSMutableArray new];
    }
    return self;
}

// detect and draw initial touch

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = touches.anyObject;
    CGPoint orig = [touch previousLocationInView:self];
    NSLog(@"touching");
    
    DrawLineSegment *drawMe = [[DrawLineSegment alloc] initWithFirstPoint:orig secondPoint:orig];
    [self.line addObject:drawMe];
    
    // to draw
    [self setNeedsDisplay];
}

// detect and draw with movement

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"moving");
    UITouch *touch = touches.anyObject;
    CGPoint orig = [touch previousLocationInView:self];
    CGPoint now = [touch locationInView:self];
    
    DrawLineSegment *drawMe = [[DrawLineSegment alloc] initWithFirstPoint:orig secondPoint:now];
    [self.line addObject:drawMe];
    
    // to draw
    [self setNeedsDisplay];
}

-(void)receiveColorChoice:(UIColor *)color {
    self.drawColor = color;
}

-(void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 10.0;
    path.lineCapStyle = kCGLineCapRound;
    UIColor *funky = self.drawColor;
    [funky setStroke];
    
    for (DrawLineSegment *segment in self.line) {
        if (CGPointEqualToPoint(segment.firstPoint, segment.secondPoint))
        {
            [path moveToPoint:segment.firstPoint];
            continue;
        }
        
        [path addLineToPoint:segment.firstPoint];
        [path addLineToPoint:segment.secondPoint];
    }
    [path stroke];
}

-(void)clear
{
    [self.line removeAllObjects];
    [self setNeedsDisplay];
}

@end
