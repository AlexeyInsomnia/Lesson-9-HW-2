//
//  APFriend.m
//  Lesson 9 HW 2
//
//  Created by Alex on 17.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APFriend.h"

@implementation APFriend

#pragma mark - APPatientDelegate



- (void) goDrink:(NSString*) string {
    NSLog(@"yo man - %@ go drink some Vodka with pepper", string);
}



- (void) patientFeelsBad:(APPatient*) patient {
    
    NSLog(@"patient %@ feeld bad with temp - %.2f", patient.name, patient.temperature);
    
    if (patient.temperature>=37 && patient.temperature<=39) {
        [self goDrink:patient.name];
    } else if (patient.temperature >39) {
        [self goDrink:patient.name];
    } else {
        [self goDrink:patient.name];
    }
    
}
- (void) patient:(APPatient*) patient hasSickPart:(partsOfABody) sickPart {
    
    patient.doctorsIsGood = arc4random() %2;
    
    if (sickPart==arm) {
        NSLog(@"patient %@ - let's cure ARM - drink VODKA", patient.name);
        
    } else if (sickPart==leg) {
        NSLog(@"patient %@ - let's cure LEG - drink VODKA", patient.name);
    } else if (sickPart==head) {
        NSLog(@"patient %@ - let's cure HEAD - drink VODKA", patient.name);
    }
    
    
}




@end
