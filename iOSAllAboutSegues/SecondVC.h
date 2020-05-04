//
//  SecondVC.h
//  iOSAllAboutSegues
//
//  Created by alex on 3/5/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lbl2;
@property (strong, nonatomic) NSString* myStringValue;

//declare this method we will use it later when passing values back using unwind segues
-(NSString*)myMethod;
//-(Employee*) emp;

@end

NS_ASSUME_NONNULL_END
