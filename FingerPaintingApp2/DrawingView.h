//
//  DrawingView.h
//  FingerPaintingApp2
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DrawingView : UIView

-(void)clear;
-(void)receiveColorChoice:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
