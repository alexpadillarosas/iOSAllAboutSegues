//
//  ThirdVC.h
//  iOSAllAboutSegues
//
//  Created by alex on 4/5/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface ThirdVC : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *lbl3;

@property (strong, nonatomic) Employee* emp;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingBtn;

@end

NS_ASSUME_NONNULL_END
