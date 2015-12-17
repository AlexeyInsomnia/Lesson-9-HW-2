//
//  APFriend.h
//  Lesson 9 HW 2
//
//  Created by Alex on 17.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APPatient.h"

@interface APFriend : NSObject <APPatientDelegate>

- (void) goDrink:(NSString*) string ;

@end
