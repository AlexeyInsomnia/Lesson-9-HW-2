//
//  APDoctor.m
//  Lesson 9 HW 2
//
//  Created by Alex on 17.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "APDoctor.h"



@implementation APDoctor

#pragma mark - APPatientDelegate



- (void) patientFeelsBad:(APPatient*) patient {
    
    
    
    NSLog(@"patient %@ feeld bad with temp - %.2f", patient.name, patient.temperature);
    
    if (patient.temperature>=37 && patient.temperature<=39) {
        [patient takePill];
        
    } else if (patient.temperature >39) {
        [patient makeShot];
    } else {
        NSLog(@"patient %@ should rest", patient.name);
    }
        
}
- (void) patient:(APPatient*) patient hasSickPart:(partsOfABody) sickPart {
    
    patient.doctorsIsGood = arc4random() %2;
    
    if (sickPart==arm) {
        NSLog(@"patient %@ - let's cure ARM - take a warm", patient.name);
        
    } else if (sickPart==leg) {
        NSLog(@"patient %@ - let's cure LEG - use your force Luke", patient.name);
    } else if (sickPart==head) {
        NSLog(@"patient %@ - let's cure HEAD - take a pill from a headAche", patient.name);
    }
    
        
}



@end

