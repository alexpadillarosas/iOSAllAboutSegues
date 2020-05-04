//
//  SecondVC.m
//  iOSAllAboutSegues
//
//  Created by alex on 3/5/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "SecondVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString* val = [[NSString alloc] initWithFormat:@"%@ modified %@",_myStringValue, @"From SecondVC"];
    [[self lbl2] setText: val];
}

/*
#pragma mark - Navigation
*/
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"prepareForSegue called in SecondVC");
}

- (IBAction)unwindToSecondView:(UIStoryboardSegue *)unwindSegue {
    UIViewController *sourceViewController = unwindSegue.sourceViewController;
    // Use data from the view controller which initiated the unwind segue
    
}

- (NSString*)myMethod{
    return @"booo";
}

@end
