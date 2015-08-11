//
//  iPadView.m
//  Exponential Invasion
//
//  Created by Danny Perski on 8/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iPadView.h"
#import "Levels_iPad.h"
#import "About_iPad.h"

@implementation iPadView

-(void)snapSound {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"finger_snap" ofType:@"wav"];  
    AVAudioPlayer* theAudio1=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];  
    //theAudio1.delegate = self; 
    [theAudio1 play];
}

-(IBAction)audioOn {
    [self snapSound];
    [self goOn];
}

-(void)goOn {
    [backMusic play];
    
    onButton.hidden = true;
    offButton.hidden = false;
    music = true;
    [[NSUserDefaults standardUserDefaults] setBool:music forKey:@"savedMusic"];
}

-(IBAction)audioOff {
    [self snapSound];
    [self goOff];
}

-(void)goOff {
    [backMusic pause];
    
    onButton.hidden = false;
    offButton.hidden = true;
    music = false;
    [[NSUserDefaults standardUserDefaults] setBool:music forKey:@"savedMusic"];
}

-(IBAction)goLevel {
    [self snapSound];
    Levels_iPad *mvc =[[Levels_iPad alloc] initWithNibName:@"Levels_iPad" bundle:nil];
    mvc.modalPresentationStyle = UIModalPresentationFullScreen;
    mvc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:mvc animated:NO];
}

-(IBAction)goAbout {
    [self snapSound];
    About_iPad *mvc =[[About_iPad alloc] initWithNibName:@"About_iPad" bundle:nil];
    mvc.modalPresentationStyle = UIModalPresentationFullScreen;
    mvc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:mvc animated:NO];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    AudioSessionInitialize ( NULL, NULL, 
                            NULL, // may want interruption callback here
                            NULL );
    UInt32 sessionCategory = kAudioSessionCategory_AmbientSound;    // 1
    AudioSessionSetProperty (kAudioSessionProperty_AudioCategory, sizeof (sessionCategory), &sessionCategory);
    AudioSessionSetActive (true);
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Half Past" ofType:@"mp3"];
    if(backMusic)[backMusic release];        
    backMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    backMusic.delegate = self;
    backMusic.numberOfLoops = -1;
    
    music = [[NSUserDefaults standardUserDefaults] integerForKey:@"savedMusic"];
    
    if (music == true) {
        [self goOn];
    }
    if (music == false) {
        [self goOff];
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

@end
