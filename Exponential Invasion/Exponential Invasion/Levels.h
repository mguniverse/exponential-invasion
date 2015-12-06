//
//  Levels.h
//  Exponential Invasion
//
//  Created by Danny Perski on 8/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <Twitter/Twitter.h>

@interface Levels : UIViewController {
    
    AVAudioPlayer *theAudio;
    
    int levelsCount;
    
    BOOL a1if;
    BOOL a2if;
    BOOL a3if;
    BOOL a4if;
    BOOL a5if;
    BOOL b1if;
    BOOL b2if;
    BOOL b3if;
    BOOL b4if;
    BOOL b5if;
    BOOL c1if;
    BOOL c2if;
    BOOL c3if;
    BOOL c4if;
    BOOL c5if;
    BOOL d1if;
    BOOL d2if;
    BOOL d3if;
    BOOL d4if;
    BOOL d5if;
    BOOL e1if;
    BOOL e2if;
    BOOL e3if;
    BOOL e4if;
    BOOL e5if;
    
    BOOL a1tower;
    BOOL a2tower;
    BOOL a3tower;
    BOOL a4tower;
    BOOL a5tower;
    BOOL b1tower;
    BOOL b2tower;
    BOOL b3tower;
    BOOL b4tower;
    BOOL b5tower;
    BOOL c1tower;
    BOOL c2tower;
    BOOL c3tower;
    BOOL c4tower;
    BOOL c5tower;
    BOOL d1tower;
    BOOL d2tower;
    BOOL d3tower;
    BOOL d4tower;
    BOOL d5tower;
    BOOL e1tower;
    BOOL e2tower;
    BOOL e3tower;
    BOOL e4tower;
    BOOL e5tower;
    
    BOOL a1wall;
    BOOL a2wall;
    BOOL a3wall;
    BOOL a4wall;
    BOOL a5wall;
    BOOL b1wall;
    BOOL b2wall;
    BOOL b3wall;
    BOOL b4wall;
    BOOL b5wall;
    BOOL c1wall;
    BOOL c2wall;
    BOOL c3wall;
    BOOL c4wall;
    BOOL c5wall;
    BOOL d1wall;
    BOOL d2wall;
    BOOL d3wall;
    BOOL d4wall;
    BOOL d5wall;
    BOOL e1wall;
    BOOL e2wall;
    BOOL e3wall;
    BOOL e4wall;
    BOOL e5wall;
    
    int interface;

    int totalBombs;
    int level1bombs;
    int level2bombs;
    int level3bombs;
    int level4bombs;
    int level5bombs;
    int level6bombs;
    int level7bombs;
    int level8bombs;
    int level9bombs;
    int level10bombs;
    int level11bombs;
    int level12bombs;
    int level13bombs;
    int level14bombs;
    int level15bombs;
    int level16bombs;
    int level17bombs;
    int level18bombs;
    int level19bombs;
    int level20bombs;
    int level21bombs;
    int level22bombs;
    int level23bombs;
    int level24bombs;
    int level25bombs;
    int level26bombs;
    int level27bombs;
    int level28bombs;
    int level29bombs;
    int level30bombs;
    int level31bombs;
    int level32bombs;
    int level33bombs;
    int level34bombs;
    int level35bombs;
    int level36bombs;
    
    int a1n;
    int a2n;
    int a3n;
    int a4n;
    int a5n;
    int b1n;
    int b2n;
    int b3n;
    int b4n;
    int b5n;
    int c1n;
    int c2n;
    int c3n;
    int c4n;
    int c5n;
    int d1n;
    int d2n;
    int d3n;
    int d4n;
    int d5n;
    int e1n;
    int e2n;
    int e3n;
    int e4n;
    int e5n;
    int towers;
    int steps;
    int progress;
    int nilSteps;
    int topSteps;
    int currentLevel;
    int currentBombs;
    int explodeChannel;
    int buttonRadius;
    
    float animationSpeed;
    BOOL animating;
    
    IBOutlet UIScrollView *myScrollView;
    IBOutlet UIView *endView;
    IBOutlet UIView *deathView;
    IBOutlet UIView *selectView;
    IBOutlet UIView *gridView;
    
    IBOutlet UISwipeGestureRecognizer *swipeUp;
    
    IBOutlet UIButton *a1b;
    IBOutlet UIButton *a2b;
    IBOutlet UIButton *a3b;
    IBOutlet UIButton *a4b;
    IBOutlet UIButton *a5b;
    IBOutlet UIButton *b1b;
    IBOutlet UIButton *b2b;
    IBOutlet UIButton *b3b;
    IBOutlet UIButton *b4b;
    IBOutlet UIButton *b5b;
    IBOutlet UIButton *c1b;
    IBOutlet UIButton *c2b;
    IBOutlet UIButton *c3b;
    IBOutlet UIButton *c4b;
    IBOutlet UIButton *c5b;
    IBOutlet UIButton *d1b;
    IBOutlet UIButton *d2b;
    IBOutlet UIButton *d3b;
    IBOutlet UIButton *d4b;
    IBOutlet UIButton *d5b;
    IBOutlet UIButton *e1b;
    IBOutlet UIButton *e2b;
    IBOutlet UIButton *e3b;
    IBOutlet UIButton *e4b;
    IBOutlet UIButton *e5b;
    IBOutlet UIButton *restartButton;
    IBOutlet UIButton *cancelButton;
    IBOutlet UIButton *leftButton;
    IBOutlet UIButton *rightButton;
    IBOutlet UIButton *levelSelectButton;
    IBOutlet UIButton *nextLevelButton;
    
    IBOutlet UILabel *categoryLabel;
    IBOutlet UILabel *levelLabel;
    IBOutlet UILabel *bombsLabel;
    IBOutlet UILabel *levelSelectButtonLabel;
    IBOutlet UILabel *nextLevelButtonLabel;
    IBOutlet UILabel *buttonLabel1;
    IBOutlet UILabel *buttonLabel2;
    IBOutlet UITextView *descriptionLabel;
    IBOutlet UITextView *evaluationLabel;
    
    IBOutlet UIImageView *a1i;
    IBOutlet UIImageView *a2i;
    IBOutlet UIImageView *a3i;
    IBOutlet UIImageView *a4i;
    IBOutlet UIImageView *a5i;
    IBOutlet UIImageView *b1i;
    IBOutlet UIImageView *b2i;
    IBOutlet UIImageView *b3i;
    IBOutlet UIImageView *b4i;
    IBOutlet UIImageView *b5i;
    IBOutlet UIImageView *c1i;
    IBOutlet UIImageView *c2i;
    IBOutlet UIImageView *c3i;
    IBOutlet UIImageView *c4i;
    IBOutlet UIImageView *c5i;
    IBOutlet UIImageView *d1i;
    IBOutlet UIImageView *d2i;
    IBOutlet UIImageView *d3i;
    IBOutlet UIImageView *d4i;
    IBOutlet UIImageView *d5i;
    IBOutlet UIImageView *e1i;
    IBOutlet UIImageView *e2i;
    IBOutlet UIImageView *e3i;
    IBOutlet UIImageView *e4i;
    IBOutlet UIImageView *e5i;
    
    IBOutlet UIImageView *bombIndicator;
    IBOutlet UIImageView *levelLock;
    
    IBOutlet UIImageView *endBombs;
}

-(IBAction) switchLeft;
-(IBAction) switchRight;

-(IBAction) a1a;
-(IBAction) a2a;
-(IBAction) a3a;
-(IBAction) a4a;
-(IBAction) a5a;
-(IBAction) b1a;
-(IBAction) b2a;
-(IBAction) b3a;
-(IBAction) b4a;
-(IBAction) b5a;
-(IBAction) c1a;
-(IBAction) c2a;
-(IBAction) c3a;
-(IBAction) c4a;
-(IBAction) c5a;
-(IBAction) d1a;
-(IBAction) d2a;
-(IBAction) d3a;
-(IBAction) d4a;
-(IBAction) d5a;
-(IBAction) e1a;
-(IBAction) e2a;
-(IBAction) e3a;
-(IBAction) e4a;
-(IBAction) e5a;

-(IBAction)cancelGrid;
-(IBAction)mainMenu;
-(IBAction)levelSelect;
-(IBAction)retry;
-(IBAction)next;
-(IBAction)tweet;
-(IBAction)killProgress;
-(IBAction)deathYes;
-(IBAction)deathNo;

-(IBAction)level:(int)currentLevel;

@property(nonatomic, retain) IBOutlet UIImageView *a1i;
@property(nonatomic, retain) IBOutlet UIImageView *a2i;
@property(nonatomic, retain) IBOutlet UIImageView *a3i;
@property(nonatomic, retain) IBOutlet UIImageView *a4i;
@property(nonatomic, retain) IBOutlet UIImageView *a5i;
@property(nonatomic, retain) IBOutlet UIImageView *b1i;
@property(nonatomic, retain) IBOutlet UIImageView *b2i;
@property(nonatomic, retain) IBOutlet UIImageView *b3i;
@property(nonatomic, retain) IBOutlet UIImageView *b4i;
@property(nonatomic, retain) IBOutlet UIImageView *b5i;
@property(nonatomic, retain) IBOutlet UIImageView *c1i;
@property(nonatomic, retain) IBOutlet UIImageView *c2i;
@property(nonatomic, retain) IBOutlet UIImageView *c3i;
@property(nonatomic, retain) IBOutlet UIImageView *c4i;
@property(nonatomic, retain) IBOutlet UIImageView *c5i;
@property(nonatomic, retain) IBOutlet UIImageView *d1i;
@property(nonatomic, retain) IBOutlet UIImageView *d2i;
@property(nonatomic, retain) IBOutlet UIImageView *d3i;
@property(nonatomic, retain) IBOutlet UIImageView *d4i;
@property(nonatomic, retain) IBOutlet UIImageView *d5i;
@property(nonatomic, retain) IBOutlet UIImageView *e1i;
@property(nonatomic, retain) IBOutlet UIImageView *e2i;
@property(nonatomic, retain) IBOutlet UIImageView *e3i;
@property(nonatomic, retain) IBOutlet UIImageView *e4i;
@property(nonatomic, retain) IBOutlet UIImageView *e5i;

@property (nonatomic, retain) IBOutlet UILabel *a1l;
@property (nonatomic, retain) IBOutlet UILabel *a2l;
@property (nonatomic, retain) IBOutlet UILabel *a3l;
@property (nonatomic, retain) IBOutlet UILabel *a4l;
@property (nonatomic, retain) IBOutlet UILabel *a5l;
@property (nonatomic, retain) IBOutlet UILabel *b1l;
@property (nonatomic, retain) IBOutlet UILabel *b2l;
@property (nonatomic, retain) IBOutlet UILabel *b3l;
@property (nonatomic, retain) IBOutlet UILabel *b4l;
@property (nonatomic, retain) IBOutlet UILabel *b5l;
@property (nonatomic, retain) IBOutlet UILabel *c1l;
@property (nonatomic, retain) IBOutlet UILabel *c2l;
@property (nonatomic, retain) IBOutlet UILabel *c3l;
@property (nonatomic, retain) IBOutlet UILabel *c4l;
@property (nonatomic, retain) IBOutlet UILabel *c5l;
@property (nonatomic, retain) IBOutlet UILabel *d1l;
@property (nonatomic, retain) IBOutlet UILabel *d2l;
@property (nonatomic, retain) IBOutlet UILabel *d3l;
@property (nonatomic, retain) IBOutlet UILabel *d4l;
@property (nonatomic, retain) IBOutlet UILabel *d5l;
@property (nonatomic, retain) IBOutlet UILabel *e1l;
@property (nonatomic, retain) IBOutlet UILabel *e2l;
@property (nonatomic, retain) IBOutlet UILabel *e3l;
@property (nonatomic, retain) IBOutlet UILabel *e4l;
@property (nonatomic, retain) IBOutlet UILabel *e5l;

@end