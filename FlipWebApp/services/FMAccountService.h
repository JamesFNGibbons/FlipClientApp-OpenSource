//
//  FMAccountService.h
//  FlipWebApp
//
//  Created by James Gibbons on 24/08/2020.
//  Copyright © 2020 Flip Multimedia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FMAccountService : NSObject

- (NSObject*) account;
- (void) getAccount;
- (void) validateLoginRequest;
- (void) init;

@end

NS_ASSUME_NONNULL_END
