//
//  APPatient.h
//  Lesson 9 HW 2
//
//  Created by Alex on 17.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    
    arm,
    leg,
    head
    
}partsOfABody;


@protocol APPatientDelegate;


@interface APPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float temperature;
@property (weak, nonatomic) id <APPatientDelegate> delegate;
@property (assign, nonatomic) BOOL doctorsIsGood;
@property (strong, nonatomic) NSString* doctorIs;


- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;
- (void) iFeelBad;


@end

@protocol APPatientDelegate 

@required

- (void) patientFeelsBad:(APPatient*) patient;
- (void) patient:(APPatient*) patient hasSickPart:(partsOfABody) sickPart;

@end