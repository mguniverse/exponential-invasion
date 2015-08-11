//
//  iPadView.h
//  Exponential Invasion
//
//  Created by Danny Perski on 8/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Levels_iPad.h"
#import "About_iPad.h"
#import <AVFoundation/AVAudioPlayer.h>
#import <AudioToolbox/AudioToolbox.h>

@interface iPadView : UIViewController <AVAudioPlayerDelegate> {
    AVAudioPlayer *backMusic;
    AVAudioPlayer *theAudio;
    
    IBOutlet UIButton *onButton;
    IBOutlet UIButton *offButton; 
    
    BOOL music;
}

-(IBAction)audioOn;
-(IBAction)audioOff;
-(IBAction)goLevel;
-(IBAction)goAbout;

-(void)snapSound;
-(void)goOn;
-(void)goOff;

@end
