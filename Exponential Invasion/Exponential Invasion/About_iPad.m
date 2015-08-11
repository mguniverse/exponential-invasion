//
//  About_iPad.m
//  Exponential Invasion
//
//  Created by dannyperski on 4/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "About_iPad.h"
#import "UIView+I7ShakeAnimation.h"

@implementation About_iPad

-(void)snapSound {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"finger_snap" ofType:@"wav"];  
    AVAudioPlayer* theAudio1=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];  
    //theAudio1.delegate = self; 
    [theAudio1 play];
}

-(void)explodeSound {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"explosion" ofType:@"wav"];  
    AVAudioPlayer* theAudio2=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];  
    //theAudio2.delegate = self; 
    [theAudio2 play];
}

-(IBAction)mainMenu {
    [self snapSound];
    [self dismissModalViewControllerAnimated:NO];
}

-(IBAction)shakeAnimation {
    explosionButton.enabled = false;
    [self explodeSound];
    [self.view shakeX];
    [self performSelector:@selector(enableExplosion) withObject:nil afterDelay:1.0];
}

-(void)enableExplosion {
    explosionButton.enabled = true;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

@end
