//
//  ViewController.h
//  Exponential Invasion
//
//  Created by Danny Perski on 10/17/15.
//  Copyright © 2015 Danny Perski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Levels.h"
#import "About.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate> {
    AVAudioPlayer *theAudio;
    IBOutlet UIScrollView *myScrollView;
    
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

