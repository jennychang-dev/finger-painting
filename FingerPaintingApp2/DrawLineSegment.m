//
//  DrawLineSegment.m
//  FingerPaintingApp2
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "DrawLineSegment.h"

@implementation DrawLineSegment

-(instancetype) initWithFirstPoint:(CGPoint)first
                       secondPoint:(CGPoint)second
{
    if (self= [super init])
    {
    
    _firstPoint = first;
    _secondPoint = second;
}
    return self;
}

-(instancetype) initWithColor:(UIColor*)color {
    if (self = [super init])
    {
    _colour = color;
}
    return self;
}

@end
