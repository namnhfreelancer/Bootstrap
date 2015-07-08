//
//  UISlderSpecial.m
//  testBS
//
//  Created by Nam Titan on 7/2/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "UISlderSpecial.h"

@interface UISlderSpecial ()
{
    NSTimer *_timer;
    __weak IBOutlet UISlider *Slider;
    __weak IBOutlet UILabel *lable;
}
@property (weak, nonatomic) IBOutlet UILabel *lable2;

@end

@implementation UISlderSpecial

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *thumbImage = [UIImage imageNamed:@"icon"];
    UIImage *minImage = [[UIImage imageNamed:@"track_fill"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    UIImage *maxImage = [UIImage imageNamed:@"track"];
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]];

    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateHighlighted];
    [[UISlider appearance] setMaximumTrackImage:maxImage forState:UIControlStateNormal];
    [[UISlider appearance] setMinimumTrackImage:minImage forState:UIControlStateNormal];


}
                         
-(void)onTimer{
    Slider.value +=0.05;
    if (Slider.value >=1.0) {
        Slider.value = 1.0;
        [_timer invalidate];
    }
}


@end
