//
//  Exponential_InvasionAppDelegate.h
//  Exponential Invasion
//
//  Created by Danny Perski on 8/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MKiCloudSync.h"

@class iPhoneView;
@class iPadView;

@interface Exponential_InvasionAppDelegate : NSObject <UIApplicationDelegate> {
    
    iPhoneView *viewController1;
	iPadView *viewController2;
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPhoneView *viewController1;
@property (nonatomic, retain) IBOutlet iPadView *viewController2;

@end
