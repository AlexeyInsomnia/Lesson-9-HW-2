//
//  AppDelegate.m
//  Lesson 9 HW 2
//
//  Created by Alex on 17.12.15.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "AppDelegate.h"
#import "APDoctor.h"
#import "APDoctor.h"
#import "APFriend.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    NSLog(@"************************  baby mode is ON - tasks 1-5 *****************");
    NSLog(@"************************  student mode is ON - task 6 - 10*****************");
    
    APPatient* patient1 = [[APPatient alloc] init];
    patient1.name = @"Stella";
    patient1.temperature = 38.f;
    
    APPatient* patient2 = [[APPatient alloc] init];
    patient2.name = @"John";
    patient2.temperature = 40.f;
    
    APPatient* patient3 = [[APPatient alloc] init];
    patient3.name = @"UVasya";
    patient3.temperature = 36.6f;
    
    APPatient* patient4 = [[APPatient alloc] init];
    patient4.name = @"Rimus";
    patient4.temperature = 37.6f;
    
    APDoctor* doctor1 = [[APDoctor alloc] init];
    
    APFriend* friend1 = [[APFriend alloc] init];
    APFriend* friend2 = [[APFriend alloc] init];
    

    patient1.delegate = doctor1;
    patient1.doctorIs = @"doctor1";
    
    patient2.delegate = friend1;
    patient2.doctorIs = @"friend1";
    
    patient3.delegate = doctor1;
    patient3.doctorIs = @"doctor1";
    
    patient4.delegate = friend2;
    patient4.doctorIs = @"friend2";
    
    NSMutableDictionary* raport = [[NSMutableDictionary alloc] init];
    
    
    NSLog(@"patient 1 fells good or not - %@", [patient1 howAreYou] ? @"YES":@"NO");
    NSLog(@"patient 2 fells good or not - %@", [patient2 howAreYou] ? @"YES":@"NO");
    NSLog(@"patient 3 fells good or not - %@", [patient3 howAreYou] ? @"YES":@"NO");
    NSLog(@"patient 3 fells good or not - %@", [patient4 howAreYou] ? @"YES":@"NO");
    
    
    NSLog(@" AND AGAIN - NOW ALL FEELS BAD 100percents - now array like in task 1-5");
    
    NSArray* array = [[NSArray alloc] initWithObjects:patient1, patient2, patient3, patient4, nil];
    
    for (APPatient* patientInsideCickle in array) {
        [patientInsideCickle iFeelBad];
        
        
    }
    
    NSLog(@"++++++++++++ AND  one more variant to push delegate*******");
    
    for (APPatient* patientInsideCickle in array) {
      
        [patientInsideCickle.delegate patientFeelsBad:patientInsideCickle];
        
    }
    
    NSLog(@"************************  master mode is ON - tasks 11 -12 *****************");
    
    for (APPatient* patientInsideCickle in array) {
      
        int forRaport = arc4random_uniform(3);
        [patientInsideCickle.delegate patient:patientInsideCickle hasSickPart:forRaport];
        
        NSString* sickPartForRaport;
  
        
        if (forRaport == 0) {
            sickPartForRaport = @"arm";
        } else if (forRaport == 1) {
            sickPartForRaport = @"leg";
        } else if (forRaport ==2) {
            sickPartForRaport = @"head";
        }
        
        
        [raport setObject:sickPartForRaport forKey:patientInsideCickle.name];
    
    }
    
    NSLog(@"raport is: %@" , raport);
    
    NSLog(@"************************  superman mode is ON - tasks 13-16 *****************");
    
    for (APPatient* obj in array) {
        NSLog(@"patient %@ thinks that doctor is - %@", obj.name, [obj doctorsIsGood] ? @"good" :@"bad");
        if ((obj.doctorsIsGood == 0) && (obj.delegate = doctor1)) {
            obj.delegate = friend1;
            obj.doctorIs = @"friend1";
            NSLog(@" i changed a doctor to the - %@", obj.doctorIs);
        } else {
            if ((obj.doctorsIsGood == 0) && (obj.delegate = friend1)) {
                obj.delegate = doctor1;
                obj.doctorIs = @"doctor1";
                NSLog(@" i changed a doctor to the - %@", obj.doctorIs);
            } else {
                if ((obj.doctorsIsGood == 0) && (obj.delegate = friend2)) {
                    obj.delegate = doctor1;
                    obj.doctorIs = @"doctor1";
                    NSLog(@" i changed a doctor to the - %@", obj.doctorIs);}
        }
    }
    }
    NSLog(@"----------------and now again with new doctors");
    for (APPatient* patientInsideCickle in array) {
        
        [patientInsideCickle.delegate patientFeelsBad:patientInsideCickle];
        
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
