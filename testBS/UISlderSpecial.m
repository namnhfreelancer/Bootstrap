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
    __weak IBOutlet UIButton *firstButton;
    __weak IBOutlet UIButton *secondButton;
}
@property (weak, nonatomic) IBOutlet UILabel *lable2;

@end

@implementation UISlderSpecial

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *thumbImage = [UIImage imageNamed:@"icon"];
    UIImage *minImage = [[UIImage imageNamed:@"track_fill"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    UIImage *maxImage = [[UIImage imageNamed:@"track"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    UIImage *onImage = [UIImage imageNamed:@"on.png"];
    UIImage *offImage = [UIImage imageNamed:@"off.png"];
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]];

    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateHighlighted];
    [[UISlider appearance] setMaximumTrackImage:maxImage forState:UIControlStateNormal];
    [[UISlider appearance] setMinimumTrackImage:minImage forState:UIControlStateNormal];
    
    [firstButton setImage:onImage forState:UIControlStateNormal];
    [firstButton setImage:offImage forState:UIControlStateSelected];
    [firstButton addTarget:self action:@selector(buttonTouch:withEvent:) forControlEvents:UIControlEventTouchUpInside];
    

}
- (void)buttonTouch:(UIButton *)aButton withEvent:(UIEvent *)event
{
    firstButton.selected = !firstButton.selected;
}

@end
