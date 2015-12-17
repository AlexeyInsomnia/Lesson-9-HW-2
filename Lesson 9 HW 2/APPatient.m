//
//  APPatient.m
//  Lesson 9 HW 2
//
//  Created by Alex on 17.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APPatient.h"

@implementation APPatient

- (BOOL) howAreYou {
    
    
    BOOL iFeelGood = arc4random() %2;

    if (!iFeelGood) {
        [self.delegate patientFeelsBad:self];
    }
    return iFeelGood;
     
}

- (void) iFeelBad {
    [self.delegate patientFeelsBad:self];
}

- (void) takePill {
    NSLog(@"patient %@ takes a pill", self.name);
    
}
- (void) makeShot {
    NSLog(@"patient %@ makes a shot", self.name);
}

@end
