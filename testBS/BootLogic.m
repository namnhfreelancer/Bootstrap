//
//  BootLogic.m
//  NamTitan
//  Created by Nam Titan on 6/17/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"Basic", MENU: @[
                                    @{TITLE: @"DemoFunction", CLASS: @"DemoFunction"}
                                    ]};
    NSDictionary* UISlider = @{SECTION: @"AllUISlider", MENU: @[
                                    @{TITLE: @"CrunchData", CLASS: @"DemoSelector"},
                                    @{TITLE: @"UISlder",CLASS:@"UIsliderr"}
                                  ]};
    NSDictionary* advanced = @{SECTION: @"Advanced", MENU: @[
                                    @{TITLE: @"Advanced C", CLASS: @"AdvancedC"}
                             ]};
    
    mainScreen.menu = @[basic, UISlider, advanced];
    mainScreen.title = @"AppByMe";
    mainScreen.about = @"Creat by Nam Titan";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
