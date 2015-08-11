//
//  About.h
//  Exponential Invasion
//
//  Created by Danny Perski on 8/30/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iPhoneView.h"
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface About : UIViewController {
    AVAudioPlayer *theAudio;
    IBOutlet UIButton *explosionButton;
}

-(IBAction)mainMenu;
-(IBAction)shakeAnimation;

-(void)enableExplosion;

@end
