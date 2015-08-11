//
//  About_iPad.h
//  Exponential Invasion
//
//  Created by dannyperski on 4/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface About_iPad : UIViewController {
    AVAudioPlayer *theAudio;
    IBOutlet UIButton *explosionButton;
}

-(IBAction)mainMenu;
-(IBAction)shakeAnimation;

-(void)enableExplosion;

@end
