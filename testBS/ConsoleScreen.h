//
//  ConsoleScreen.h
//  NamTitan
//  Created by Nam Titan on 6/17/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConsoleScreen : UIViewController
- (void) write: (NSString*) string;
- (void) writeln: (NSString*) string;
@end
