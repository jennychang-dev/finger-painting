//
//  DrawLineSegment.h
//  FingerPaintingApp2
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface DrawLineSegment : NSObject

@property (nonatomic, readonly) CGPoint firstPoint;
@property (nonatomic, readonly) CGPoint secondPoint;

-(instancetype) initWithFirstPoint:(CGPoint)first
                       secondPoint:(CGPoint)second;

-(instancetype) initWithColor:(UIColor*)color;

@property (nonatomic, weak) UIColor *colour;

@end

NS_ASSUME_NONNULL_END
