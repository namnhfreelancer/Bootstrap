//
//  UIsliderr.m
//  testBS
//
//  Created by Nam Titan on 7/2/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "UIsliderr.h"

@interface UIsliderr ()
{
    NSTimer* _timer;
    __weak IBOutlet UISlider *UISliderr;
}

@end

@implementation UIsliderr

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                              target:self
                                            selector:@selector(onTimer)
                                            userInfo:nil
                                             repeats:true];
    UISliderr.transform = CGAffineTransformMakeRotation(M_PI_2);
    UISliderr.tintColor = [UIColor redColor];
    UISliderr.thumbTintColor= [UIColor yellowColor];
}
-(void)onTimer{
    UISliderr.value +=0.05;
    if (UISliderr.value >=1.0) {
        UISliderr.value = 1.0;
        [_timer invalidate];
    }
}


@end
