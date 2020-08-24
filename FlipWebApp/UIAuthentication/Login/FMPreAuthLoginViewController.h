///Users/jgibbons/Documents/xcode-projects/FlipWebApp/FlipWebApp
//  FMPreAuthLoginViewController.h
//  FlipWebApp
//
//  Created by James Gibbons on 24/08/2020.
//  Copyright © 2020 Flip Multimedia. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FMPreAuthLoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *nextStepBtn;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (void)keyboardWillShowEvent;
- (void)keyboardWillHideEvent;

@end

NS_ASSUME_NONNULL_END
