//
//  FMKeyboardEvents.m
//  FlipWebApp
//
//  Created by James Gibbons on 24/08/2020.
//  Copyright © 2020 Flip Multimedia. All rights reserved.
//

#import "FMKeyboardEvents.h"

@implementation FMKeyboardEvents

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void) init: (UIView*)senderView {
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShowEvent) name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHideEvent) name:UIKeyboardWillHideNotification object:nil];
}


- (CGSize) keyboardSize: (NSNotification*) notification {
    CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    
    return keyboardSize;
}


- (void) keyboardWillShowEvent: (NSNotification*) notification {
    
    // slight UI tweaks for smooth transition during keyboard operation.
    CGSize keyboardSize = [self keyboardSize:notification];
    NSLog(@"k out!");
    
}

- (void) keyboardWillHideEvent: (NSNotification*) notification {
    
}

@end
