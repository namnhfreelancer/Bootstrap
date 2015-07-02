//
//  BootLogic.h
//  NamTitan
//  Created by Nam Titan on 6/17/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import <Foundation/Foundation.h>
#define SECTION @"section"
#define MENU @"menu"
#define TITLE @"title"
#define CLASS @"class"
#import <UIKit/UIKit.h>

@interface BootLogic : NSObject
+ (void) boot: (UIWindow*) window;
@end
