//
//  ThirdVC.m
//  iOSAllAboutSegues
//
//  Created by alex on 4/5/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "ThirdVC.h"

@interface ThirdVC ()

@end

@implementation ThirdVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _emp = [[Employee alloc] init];
    [[self emp] setName:@"John"];
    [[self emp] setSurname:@"Doe"];

}

/*
#pragma mark - Navigation
*/
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"prepareForSegue called in ThirdVC");
    
    
}

/**
 Here we code what a button will do, then call unwind segue programmatically
 */
- (IBAction)doSomethingAction:(id)sender {
    [[self lbl3] setText:@"Shark"];
    [self performSegueWithIdentifier:@"unwindFromThirdVC" sender:self];
}



@end
