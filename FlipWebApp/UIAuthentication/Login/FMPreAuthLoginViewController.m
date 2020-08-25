//
//  FMPreAuthLoginViewController.m
//  FlipWebApp
//
//  Created by James Gibbons on 24/08/2020.
//  Copyright © 2020 Flip Multimedia. All rights reserved.
//

#import "FMPreAuthLoginViewController.h"

@interface FMPreAuthLoginViewController ()

@end

@implementation FMPreAuthLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Sign in";
    
    // set default button state to disabled
    [_nextStepBtn setEnabled:false];
}

- (IBAction)usernameDidBeginEditing:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.3];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y -200., self.view.frame.size.width, self.view.frame.size.height);

    [_usernameLabel setOpaque:true];
        
    [UIView commitAnimations];
}


- (IBAction)usernameDidEndEditing:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.3];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y +200., self.view.frame.size.width, self.view.frame.size.height);

    [UIView commitAnimations];
}


- (IBAction)passwordDidBeginEditing:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.3];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y -200., self.view.frame.size.width, self.view.frame.size.height);

    [UIView commitAnimations];
}


- (IBAction)passwordDidEndEditing:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.3];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y -200., self.view.frame.size.width, self.view.frame.size.height);

    [UIView commitAnimations];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:true];
    
    NSString *emailInput = [_emailTextField text];
    if(emailInput.length > 0 && [_passwordTextField text].length > 0) {
        [_nextStepBtn setEnabled:true];
    }
    
}


- (IBAction)nextStepBtnTapEvent:(id)sender {

}

@end
