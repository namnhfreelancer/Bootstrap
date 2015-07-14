//
//  SkewImage.m
//  testBS
//
//  Created by Nam Titan on 7/14/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "SkewImage.h"

@interface SkewImage ()

@property (weak, nonatomic) IBOutlet UIImageView *ngocTrinh;


@end

@implementation SkewImage



- (IBAction)sliderChange:(id)sender {
    UISlider *slider = (UISlider *)sender;
    if ( self.ngocTrinh.layer.anchorPoint.x > 0.0 )
    {
        CGPoint position = self.ngocTrinh.layer.position;
        position.x -= self.ngocTrinh.layer.bounds.size.width / 2.0;
        self.ngocTrinh.layer.anchorPoint = CGPointMake( 0.0, 0.5 );
        self.ngocTrinh.layer.position = position;
    }
    
    CATransform3D t = CATransform3DIdentity;
    t.m34 = slider.value;
    NSLog(@"%f",slider.value);
    t = CATransform3DRotate( t, M_PI / 6.0, 0.0, 1.0, 0.0 );
    self.ngocTrinh.layer.transform = t;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *thumbImage = [UIImage imageNamed:@"icon"];
    UIImage *minImage = [[UIImage imageNamed:@"track_fill"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    UIImage *maxImage = [[UIImage imageNamed:@"track"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 4, 0, 4)];
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]];
    
    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateNormal];
    [[UISlider appearance] setThumbImage:thumbImage forState:UIControlStateHighlighted];
    [[UISlider appearance] setMaximumTrackImage:maxImage forState:UIControlStateNormal];
    [[UISlider appearance] setMinimumTrackImage:minImage forState:UIControlStateNormal];
    
}

@end
