//
//  ViewController.m
//  Exponential Invasion
//
//  Created by Danny Perski on 10/17/15.
//  Copyright © 2015 Danny Perski. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Levels.h"
#import "About.h"

@implementation ViewController

-(void)snapSound {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"finger_snap" ofType:@"wav"];
    theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    theAudio.volume = 0.5;
    [theAudio play];
}

-(IBAction)audioOn {
    [self snapSound];
    [self goOn];
}

-(void)goOn {
    AppDelegate *appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    [appDelegate.menuMusic stop];
    [appDelegate muteMusic];
    
    onButton.hidden = true;
    offButton.hidden = false;
}

-(IBAction)audioOff {
    [self snapSound];
    [self goOff];
}

-(void)goOff {
    AppDelegate *appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    [appDelegate.menuMusic play];
    [appDelegate unmuteMusic];
    
    onButton.hidden = false;
    offButton.hidden = true;
}

-(IBAction)goLevel {
    [self snapSound];
}

-(IBAction)goAbout {
    [self snapSound];
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
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryAmbient error:nil];
    
    [myScrollView setScrollEnabled:YES];
    [myScrollView setContentSize:CGSizeMake(320, 220)];
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"savedMusic"]) {
        onButton.hidden = true;
        offButton.hidden = false;
    }
    else {
        onButton.hidden = false;
        offButton.hidden = true;
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}

@end
