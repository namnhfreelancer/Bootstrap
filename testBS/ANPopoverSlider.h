//
//  ANPopoverSlider.h
//  testBS
//
//  Created by Nam Titan on 7/9/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <UIKit/UIKit.h>

#import "ANPopoverView.h"

@interface ANPopoverSlider : UISlider

@property (strong, nonatomic) ANPopoverView *popupView;

@property (nonatomic, readonly) CGRect thumbRect;

@end