//
//  DemoFunction.m
//  testBS
//
//  Created by Nam Titan on 6/25/15.
//  Copyright © 2015 Nam Titan. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    [self writeln:@"DEMO FUNCTION"];
    [self writeln:@"Hello Word !"];
    [self sayFirstName:@"Steave" andLastName:@"Jobs"];
    float tempDegree = 30.1;
    NSString *result =[NSString stringWithFormat:@"%2.1f degree equal to %3.1f",tempDegree,[self celciusToFahrenheit:tempDegree]];
    [self writeln:result];
    [self performSelector:@selector(celciusToFahrenheit)];
    [self performSelector:@selector(celciusToFahrenheit2:) withObject:@(30.1)];
}
-(void) sayFirstName: (NSString*) firstName andLastName: (NSString*) lastName {
    NSLog(@"%@ %@",firstName,lastName);
}
-(float) celciusToFahrenheit: (float) degree {
    return degree *1.8 +32.0;
}
-(void) celciusToFahrenheit{
    NSLog(@"Do nothing");
}
-(float) celciusToFahrenheit2{
    return 10.1;
}
-(void) celciusToFahrenheit2: (NSNumber*) degree {
    float result = [degree floatValue] *1.8 +32.0;
    NSLog(@"result = %2.1f",result);
}
@end
