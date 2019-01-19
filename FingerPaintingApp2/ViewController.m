//
//  ViewController.m
//  FingerPaintingApp2
//
//  Created by Jenny Chang on 18/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"
#import "DrawLineSegment.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet DrawingView *drawView;


@end

@implementation ViewController

- (IBAction)clear {
    [self.drawView clear];
}

- (IBAction)greyColor:(UIButton *)sender {
    [self.drawView receiveColorChoice:[UIColor grayColor]];
    }

- (IBAction)greenColor:(UIButton *)sender {
    [self.drawView receiveColorChoice:[UIColor greenColor]];
}

- (IBAction)yellowColor:(UIButton *)sender {
    [self.drawView receiveColorChoice:[UIColor yellowColor]];
}

- (IBAction)redColor:(UIButton *)sender {
    [self.drawView receiveColorChoice:[UIColor redColor]];
}

- (IBAction)blueColor:(UIButton *)sender {
    [self.drawView receiveColorChoice:[UIColor blueColor]];
}



@end
