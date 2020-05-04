//
//  ViewController.m
//  iOSAllAboutSegues
//
//  Created by alex on 3/5/20.
//  Copyright © 2020 alex. All rights reserved.
//

//video on how to call unwind segue programatically   https://www.youtube.com/watch?v=akmPXZ4hDuU&t=110s
//Passing data between view controllers  https://matteomanferdini.com/how-ios-view-controllers-communicate-with-each-other/

#import "ViewController.h"
#import "SecondVC.h"
#import "ThirdVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/**
 This method is usually implemented to pass info from the presenter to the presented controller.
 */
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString: @"screen2"]) {
        NSLog(@"PrepareForSegue called in Main Controller");
        //Get the destination
        SecondVC* destVC = [segue destinationViewController];
        destVC.myStringValue = [[self txtPass] text];
    }
}

/**
 This is to unwind the segue.  Implement this method in the parent controller.
 After, you go to the presented controller and right click a component (a button in our example) and drag it to the exit icon of the same controller
 and that's all
 */
- (IBAction)unwindToMainVC:(UIStoryboardSegue *)unwindSegue {
    UIViewController *sourceViewController = unwindSegue.sourceViewController;
    // Use data from the view controller which initiated the unwind segue
//    [self lbl1] setText:sourceViewController
    
//    NSString* value = [[(SecondVC*)sourceViewController lbl2] text];
//    [[self lbl1] setText:value];
    
    //responds to selector indicates if the class responds to an existing method called in this case: myMethod
    //so we make sure the method exists in that class then we can call it
    if([sourceViewController respondsToSelector:@selector(myMethod)] ){
         NSLog(@"coming back from: SecondVC, in there myMethod exists, so we can call it here..."  );
    }
    if( [sourceViewController respondsToSelector:@selector(lbl2)]){
         NSLog(@"coming back from: SecondVC again, this time the method lbl2 exists: is the getter of lbl2"  );
    }
    
    //This is for the third view
    if( [sourceViewController respondsToSelector:@selector(emp)]  ){
        ThirdVC* myThirdVC = (ThirdVC*)sourceViewController;
        Employee* myEmp = [myThirdVC emp];
        NSString* value = [[myThirdVC lbl3] text];
        NSLog(@"%@ ---- %@", myEmp, value);
    }
    
    //this will only work if we've set the identifier for every segue
    NSLog(@"coming back from: %@", [unwindSegue identifier]  );
    
//
}

@end
