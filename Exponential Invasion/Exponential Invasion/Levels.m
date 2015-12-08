//
//  Levels.m
//  Exponential Invasion
//
//  Created by Danny Perski on 8/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Levels.h"
#import "UIView+I7ShakeAnimation.h"

@implementation Levels

@synthesize a1i;
@synthesize a2i;
@synthesize a3i;
@synthesize a4i;
@synthesize a5i;
@synthesize b1i;
@synthesize b2i;
@synthesize b3i;
@synthesize b4i;
@synthesize b5i;
@synthesize c1i;
@synthesize c2i;
@synthesize c3i;
@synthesize c4i;
@synthesize c5i;
@synthesize d1i;
@synthesize d2i;
@synthesize d3i;
@synthesize d4i;
@synthesize d5i;
@synthesize e1i;
@synthesize e2i;
@synthesize e3i;
@synthesize e4i;
@synthesize e5i;

@synthesize a1l;
@synthesize a2l;
@synthesize a3l;
@synthesize a4l;
@synthesize a5l;
@synthesize b1l;
@synthesize b2l;
@synthesize b3l;
@synthesize b4l;
@synthesize b5l;
@synthesize c1l;
@synthesize c2l;
@synthesize c3l;
@synthesize c4l;
@synthesize c5l;
@synthesize d1l;
@synthesize d2l;
@synthesize d3l;
@synthesize d4l;
@synthesize d5l;
@synthesize e1l;
@synthesize e2l;
@synthesize e3l;
@synthesize e4l;
@synthesize e5l;

-(IBAction) switchLeft {
    if (animating == false && interface >= 0 && endView.hidden == true) {
        animating = true;
        [self snapSound];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        gridView.transform = CGAffineTransformMakeTranslation(160, 0);
        gridView.alpha = 0;
        
        [UIView commitAnimations];
        
        [self performSelector:@selector(offsetSwitchLeft) withObject:self afterDelay:animationSpeed];
    }
}

-(void)offsetSwitchLeft {
    currentLevel = currentLevel - 1;
    if (currentLevel == 0) {
        currentLevel = levelsCount;
    }
    [self level:currentLevel];
    [self loadProgress];
    gridView.transform = CGAffineTransformMakeTranslation(-160, 0);
    
    [self setLevelPosition];
}

-(IBAction) switchRight {
    if (animating == false && interface >= 0 && endView.hidden == true) {
        animating = true;
        [self snapSound];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:animationSpeed];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        
        gridView.transform = CGAffineTransformMakeTranslation(-160, 0);
        gridView.alpha = 0;
        
        [UIView commitAnimations];
        
        [self performSelector:@selector(offsetSwitchRight) withObject:self afterDelay:animationSpeed];
    }
}

-(void)offsetSwitchRight {
    currentLevel = currentLevel + 1;
    if (currentLevel == levelsCount + 1) {
        currentLevel = 1;
    }
    [self level:currentLevel];
    [self loadProgress];
    gridView.transform = CGAffineTransformMakeTranslation(160, 0);
    
    [self setLevelPosition];
}

-(void)setLevelPosition {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationSpeed];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    
    gridView.transform = CGAffineTransformMakeTranslation(0, 0);
    gridView.alpha = 1;
    
    [UIView commitAnimations];
    
    [self performSelector:@selector(endAnimation) withObject:self afterDelay:animationSpeed];
}

-(void)endAnimation {
    animating = false;
}

-(void)menuInterface {
    leftButton.hidden = false;
    rightButton.hidden = false;

    endView.hidden = true;
    
    buttonLabel1.text = [NSString stringWithFormat:@"Previous level"];
    buttonLabel2.text = [NSString stringWithFormat:@"Next level"];
    
    interface = 0;
}

-(void)gameplayInterface {
    leftButton.hidden = true;
    rightButton.hidden = true;
    
    cancelButton.hidden = false;
    levelSelectButton.hidden = false;
    
    buttonLabel1.text = [NSString stringWithFormat:@"Level select"];
    buttonLabel2.text = [NSString stringWithFormat:@"Restart"];
    
    interface = 1;
}

-(IBAction) level1 {
    currentLevel = 1;
    [self level:currentLevel];
}

-(IBAction) level2 {
    currentLevel = 2;
    [self level:currentLevel];
}

-(IBAction) level3 {
    currentLevel = 3;
    [self level:currentLevel];
}

-(IBAction) level4 {
    currentLevel = 4;
    [self level:currentLevel];
}

-(IBAction) level5 {
    currentLevel = 5;
    [self level:currentLevel];
}

-(IBAction) level6 {
    currentLevel = 6;
    [self level:currentLevel];
}

-(IBAction) level7 {
    currentLevel = 7;
    [self level:currentLevel];
}

-(IBAction) level8 {
    currentLevel = 8;
    [self level:currentLevel];
}

-(IBAction) level9 {
    currentLevel = 9;
    [self level:currentLevel];
}

-(IBAction) level10 {
    currentLevel = 10;
    [self level:currentLevel];
}

-(IBAction) level11 {
    currentLevel = 11;
    [self level:currentLevel];
}

-(IBAction) level12 {
    currentLevel = 12;
    [self level:currentLevel];
}

-(IBAction) level13 {
    currentLevel = 13;
    [self level:currentLevel];
}

-(IBAction) level14 {
    currentLevel = 14;
    [self level:currentLevel];
}

-(IBAction) level15 {
    currentLevel = 15;
    [self level:currentLevel];
}

-(IBAction) level16 {
    currentLevel = 16;
    [self level:currentLevel];
}

-(IBAction) level17 {
    currentLevel = 17;
    [self level:currentLevel];
}

-(IBAction) level18 {
    currentLevel = 18;
    [self level:currentLevel];
}

-(IBAction) level19 {
    currentLevel = 19;
    [self level:currentLevel];
}

-(IBAction) level20 {
    currentLevel = 20;
    [self level:currentLevel];
}

-(IBAction) level21 {
    currentLevel = 21;
    [self level:currentLevel];
}

-(IBAction) level22 {
    currentLevel = 22;
    [self level:currentLevel];
}

-(IBAction) level23 {
    currentLevel = 23;
    [self level:currentLevel];
}

-(IBAction)level24 {
    currentLevel = 24;
    [self level:currentLevel];
}

-(IBAction) level25 {
    currentLevel = 25;
    [self level:currentLevel];
}

-(IBAction) level26 {
    currentLevel = 26;
    [self level:currentLevel];
}

-(IBAction) level27 {
    currentLevel = 27;
    [self level:currentLevel];
}

-(IBAction) level28 {
    currentLevel = 28;
    [self level:currentLevel];
}

-(IBAction) level29 {
    currentLevel = 29;
    [self level:currentLevel];
}

-(IBAction) level30 {
    currentLevel = 30;
    [self level:currentLevel];
}

-(IBAction) level31 {
    currentLevel = 31;
    [self level:currentLevel];
}

-(IBAction) level32 {
    currentLevel = 32;
    [self level:currentLevel];
}

-(IBAction) level33 {
    currentLevel = 33;
    [self level:currentLevel];
}

-(IBAction) level34 {
    currentLevel = 34;
    [self level:currentLevel];
}

-(IBAction) level35 {
    currentLevel = 35;
    [self level:currentLevel];
}

-(IBAction)level36 {
    currentLevel = 36;
    [self level:currentLevel];
}

-(void)level:(int)levelNumber {
    [self clearLevel];
    if (currentLevel == 1) {
        currentLevel = 1;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level1bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"You can tap on white numbers to move them around the grid."];
        c2n = 2;
        c4n = 1;
        c4tower = true;
        towers = 1;
        topSteps = 2;
    }
    if (currentLevel == 2) {
        currentLevel = 2;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level2bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Combine two numbers to make greater numbers."];
        b2n = 2;
        d2n = 3;
        c4n = 4;
        c4tower = true;
        towers = 1;
        topSteps = 3;
    }
    if (currentLevel == 3) {
        currentLevel = 3;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level3bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"You can only combine a greater number to a lesser number."];
        a2n = 4;
        a4n = 2;
        e3n = 6;
        c3n = 9;
        c3tower = true;
        towers = 1;
        topSteps = 5;
    }
    if (currentLevel == 4) {
        currentLevel = 4;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level4bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"You cannot move onto gaps, go around them."];
        b3wall = true;
        c3wall = true;
        d3wall = true;
        
        c1n = 6;
        c5n = 5;
        c5tower = true;
        towers = 1;
        topSteps = 4;
    }
    if (currentLevel == 5) {
        currentLevel = 5;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level5bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"You now have two towers (blue numbers) to conquer."];
        a2wall = true;
        a3wall = true;
        a4wall = true;
        b3wall = true;
        d3wall = true;
        e2wall = true;
        e3wall = true;
        e4wall = true;
        a1n = 6;
        b1n = 4;
        d1n = 3;
        e1n = 5;
        
        a5n = 8;
        a5tower = true;
        e5n = 8;
        e5tower = true;
        towers = 2;
        topSteps = 12;
    }
    if (currentLevel == 6) {
        currentLevel = 6;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level6bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Start with five, and use only one for each tower."];
        b2wall = true;
        b4wall = true;
        d2wall = true;
        d4wall = true;
        
        a1n = 4;
        a3n = 5;
        a5n = 4;
        c1n = 5;
        c3n = 4;
        c5n = 16;
        e1n = 4;
        e3n = 12;
        e5n = 4;
        c5tower = true;
        e3tower = true;
        towers = 2;
        topSteps = 16;
    }
    if (currentLevel == 7) {
        currentLevel = 7;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level7bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"You can move numbers diagonally, use this to your advantage."];
        a1wall = true;
        a2wall = true;
        a3wall = true;
        a4wall = true;
        a5wall = true;
        b1wall = true;
        b2wall = true;
        b3wall = true;
        b4wall = true;
        d2wall = true;
        d3wall = true;
        d4wall = true;
        d5wall = true;
        e1wall = true;
        e2wall = true;
        e3wall = true;
        e4wall = true;
        e5wall = true;
        
        b5n = 8;
        c1n = 7;
        c2n = 6;
        c3n = 9;
        c4n = 2;
        c5n = 14;
        
        c5tower = true;
        b5tower = true;
        towers = 2;
        topSteps = 10;
    }
    if (currentLevel == 8) {
        currentLevel = 8;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level8bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Take note of your available numbers before you add them together."];
        a2wall = true;
        a3wall = true;
        a4wall = true;
        b1wall = true;
        b3wall = true;
        b5wall = true;
        c1wall = true;
        c2wall = true;
        c4wall = true;
        c5wall = true;
        d1wall = true;
        d3wall = true;
        d5wall = true;
        e2wall = true;
        e3wall = true;
        e4wall = true;
        
        a1n = 9;
        a5n = 5;
        b2n = 4;
        b4n = 4;
        c3n = 3;
        d2n = 6;
        d4n = 5;
        e1n = 17;
        e5n = 17;
        
        e1tower = true;
        e5tower = true;
        towers = 2;
        topSteps = 8;
    }
    if (currentLevel == 9) {
        currentLevel = 9;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level9bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Equal numbers cannot add together, one must be greater than the other."];
        a1wall = true;
        a2wall = true;
        a4wall = true;
        a5wall = true;
        b1wall = true;
        b2wall = true;
        b4wall = true;
        b5wall = true;
        d1wall = true;
        d2wall = true;
        d4wall = true;
        d5wall = true;
        e1wall = true;
        e2wall = true;
        e4wall = true;
        e5wall = true;
        
        a3n = 4;
        b3n = 5;
        c1n = 2;
        c2n = 7;
        c3n = 35;
        c4n = 3;
        c5n = 6;
        d3n = 1;
        e3n = 8;
        
        c3tower = true;
        towers = 1;
        topSteps = 10;
    }
    if (currentLevel == 10) {
        currentLevel = 10;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level10bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Think ahead, you do not want to waste crucial numbers."];
        a1wall = true;
        a2wall = true;
        a3wall = true;
        a4wall = true;
        a5wall = true;
        b2wall = true;
        b4wall = true;
        c1wall = true;
        c3wall = true;
        c5wall = true;
        d2wall = true;
        d4wall = true;
        e1wall = true;
        e2wall = true;
        e3wall = true;
        e4wall = true;
        e5wall = true;
        
        b1n = 1;
        b3n = 18;
        b5n = 7;
        c2n = 8;
        c4n = 5;
        d1n = 11;
        d3n = 18;
        d5n = 6;
        
        b3tower = true;
        d3tower = true;
        towers = 2;
        topSteps = 9;
    }
    if (currentLevel == 11) {
        currentLevel = 11;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level11bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Again, try to be resourceful with your available numbers."];
        a1wall = true;
        a3wall = true;
        a4wall = true;
        a5wall = true;
        b1wall = true;
        b5wall = true;
        c1wall = true;
        c3wall = true;
        c5wall = true;
        d1wall = true;
        d5wall = true;
        e1wall = true;
        e2wall = true;
        e3wall = true;
        e5wall = true;
        
        a2n = 9;
        b2n = 7;
        b3n = 4;
        b4n = 3;
        c2n = 18;
        c4n = 18;
        d2n = 2;
        d3n = 5;
        d4n = 1;
        e4n = 7;
        
        c2tower = true;
        c4tower = true;
        towers = 2;
        topSteps = 12;
    }
    if (currentLevel == 12) {
        currentLevel = 12;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level12bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"The first move is the most tricky one, but it will open up the grid."];
        a1wall = true;
        a2wall = true;
        a4wall = true;
        a5wall = true;
        b1wall = true;
        b5wall = true;
        c1wall = true;
        c2wall = true;
        c4wall = true;
        c5wall = true;
        d1wall = true;
        d5wall = true;
        e1wall = true;
        e2wall = true;
        e4wall = true;
        e5wall = true;
        
        a3n = 2;
        b2n = 6;
        b3n = 10;
        b4n = 4;
        c3n = 4;
        d2n = 3;
        d3n = 14;
        d4n = 5;
        e3n = 2;
        
        b3tower = true;
        d3tower = true;
        
        towers = 2;
        topSteps = 8;
    }
    if (currentLevel == 13) {
        currentLevel = 13;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level13bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"A twelve defends an eight, save some forces to defeat the eight."];
        a1wall = true;
        a2wall = true;
        b3wall = true;
        b4wall = true;
        b5wall = true;
        c1wall = true;
        c2wall = true;
        c4wall = true;
        c5wall = true;
        d1wall = true;
        d2wall = true;
        d3wall = true;
        e4wall = true;
        e5wall = true;
        
        a3n = 2;
        a4n = 12;
        a5n = 8;
        b1n = 1;
        b2n = 3;
        c3n = 5;
        d4n = 3;
        d5n = 1;
        e1n = 1;
        e2n = 2;
        e3n = 4;
        
        a4tower = true;
        a5tower = true;
        
        towers = 2;
        topSteps = 17;
    }
    if (currentLevel == 14) {
        currentLevel = 14;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level14bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"You may need to add numbers together to make space."];
        a3wall = true;
        b3wall = true;
        c1wall = true;
        c2wall = true;
        c4wall = true;
        c5wall = true;
        d3wall = true;
        e3wall = true;
        
        a1n = 11;
        a2n = 2;
        a4n = 7;
        a5n = 14;
        b1n = 3;
        b2n = 6;
        b4n = 1;
        b5n = 5;
        d1n = 8;
        d2n = 5;
        d4n = 3;
        d5n = 4;
        e1n = 13;
        e2n = 4;
        e4n = 6;
        e5n = 12;
        
        a1tower = true;
        a5tower = true;
        e1tower = true;
        e5tower = true;
        
        towers = 4;
        topSteps = 20;
    }
    if (currentLevel == 15) {
        currentLevel = 15;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level15bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Your fleet is divided, use only what is needed to defeat the blue numbers."];
        a5wall = true;
        b2wall = true;
        b3wall = true;
        b4wall = true;
        c2wall = true;
        c3wall = true;
        c4wall = true;
        d2wall = true;
        d3wall = true;
        d4wall = true;
        e1wall = true;
        
        a1n = 6;
        a2n = 4;
        a3n = 2;
        a4n = 7;
        b1n = 5;
        b5n = 26;
        c1n = 1;
        c5n = 8;
        d1n = 26;
        d5n = 3;
        e2n = 4;
        e3n = 5;
        e4n = 2;
        e5n = 7;
        
        b5tower = true;
        d1tower = true;
        
        towers = 2;
        topSteps = 19;
    }
    if (currentLevel == 16) {
        currentLevel = 16;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level16bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"You have everything needed to complete the level at your disposal."];
        a1wall = true;
        a2wall = true;
        a4wall = true;
        a5wall = true;
        b1wall = true;
        b3wall = true;
        b5wall = true;
        c2wall = true;
        c4wall = true;
        d1wall = true;
        d3wall = true;
        d5wall = true;
        e1wall = true;
        e2wall = true;
        e4wall = true;
        e5wall = true;
        
        a3n = 6;
        b2n = 18;
        b4n = 5;
        c1n = 7;
        c3n = 3;
        c5n = 4;
        d2n = 5;
        d4n = 16;
        e3n = 6;
        
        b2tower = true;
        d4tower = true;
        
        towers = 2;
        topSteps = 10;
    }
    if (currentLevel == 17) {
        currentLevel = 17;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level17bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Be efficient, you only need an integer that is greater by one."];
        a1wall = true;
        a3wall = true;
        a5wall = true;
        b2wall = true;
        b4wall = true;
        c2wall = true;
        c3wall = true;
        c4wall = true;
        d1wall = true;
        d3wall = true;
        d5wall = true;
        e1wall = true;
        e2wall = true;
        e4wall = true;
        e5wall = true;
        
        a2n = 2;
        a4n = 3;
        b1n = 11;
        b3n = 27;
        b5n = 2;
        c1n = 4;
        c5n = 7;
        d2n = 8;
        d4n = 6;
        e3n = 14;
        
        b3tower = true;
        e3tower = true;
        
        towers = 2;
        topSteps = 14;
    }
    if (currentLevel == 18) {
        currentLevel = 18;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level18bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"While intimidating, this puzzle has many solutions. Have fun."];
        b3wall = true;
        d3wall = true;
        
        a1n = 5;
        a2n = 6;
        a3n = 1;
        a4n = 5;
        a5n = 15;
        b1n = 3;
        b2n = 1;
        b4n = 4;
        b5n = 11;
        c1n = 8;
        c2n = 6;
        c3n = 7;
        c4n = 5;
        c5n = 17;
        d1n = 2;
        d2n = 5;
        d4n = 3;
        d5n = 13;
        e1n = 3;
        e2n = 7;
        e3n = 4;
        e4n = 2;
        e5n = 16;
        
        a5tower = true;
        b5tower = true;
        c5tower = true;
        d5tower = true;
        e5tower = true;
        
        towers = 5;
        topSteps = 23;
    }
    if (currentLevel == 19) {
        currentLevel = 19;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level19bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"This is the part where the levels start to get a bit more difficult."];
        a3wall = true;
        b2wall = true;
        b4wall = true;
        c1wall = true;
        c3wall = true;
        c5wall = true;
        d2wall = true;
        d4wall = true;
        e3wall = true;
        
        a1n = 6;
        a2n = 4;
        a4n = 4;
        a5n = 6;
        b1n = 2;
        b3n = 28;
        b5n = 5;
        c2n = 3;
        c4n = 7;
        d1n = 5;
        d3n = 32;
        d5n = 2;
        e1n = 2;
        e2n = 9;
        e4n = 3;
        e5n = 4;
        
        b3tower = true;
        d3tower = true;
        
        towers = 2;
        topSteps = 17;
    }
    if (currentLevel == 20) {
        currentLevel = 20;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level20bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"In these more difficult levels, you will have more and greater towers."];
        a1wall = true;
        a5wall = true;
        b2wall = true;
        b4wall = true;
        c3wall = true;
        d2wall = true;
        d4wall = true;
        e1wall = true;
        e5wall = true;
        
        a2n = 7;
        a3n = 4;
        a4n = 5;
        b1n = 2;
        b3n = 10;
        b5n = 2;
        c1n = 4;
        c2n = 12;
        c4n = 14;
        c5n = 6;
        d1n = 2;
        d3n = 8;
        d5n = 3;
        e2n = 6;
        e3n = 2;
        e4n = 5;
        
        b3tower = true;
        c2tower = true;
        c4tower = true;
        d3tower = true;
        
        towers = 4;
        topSteps = 16;
    }
    if (currentLevel == 21) {
        currentLevel = 21;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level21bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Often you will need decide carefully which tower to invade first."];
        a2wall = true;
        a4wall = true;
        b1wall = true;
        b3wall = true;
        b5wall = true;
        c1wall = true;
        c5wall = true;
        d2wall = true;
        d4wall = true;
        e3wall = true;
        
        a1n = 9;
        a3n = 16;
        a5n = 4;
        b2n = 48;
        b4n = 18;
        c2n = 3;
        c3n = 2;
        c4n = 6;
        d1n = 5;
        d3n = 12;
        d5n = 8;
        e1n = 6;
        e2n = 11;
        e4n = 4;
        e5n = 7;
        
        b2tower = true;
        b4tower = true;
        d3tower = true;
        
        towers = 3;
        topSteps = 17;
    }
    if (currentLevel == 22) {
        currentLevel = 22;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level22bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"A lot of these tougher levels are based off of earlier designs."];
        a3wall = true;
        a4wall = true;
        a5wall = true;
        b1wall = true;
        b2wall = true;
        c3wall = true;
        d4wall = true;
        d5wall = true;
        e1wall = true;
        e2wall = true;
        e3wall = true;
        
        a1n = 1;
        a2n = 8;
        b3n = 9;
        b4n = 11;
        b5n = 4;
        c1n = 6;
        c2n = 16;
        c4n = 22;
        c5n = 2;
        d1n = 7;
        d2n = 4;
        d3n = 8;
        e4n = 14;
        e5n = 12;
        
        a2tower = true;
        c2tower = true;
        c4tower = true;
        e4tower = true;
        
        towers = 4;
        topSteps = 20;
    }
    if (currentLevel == 23) {
        currentLevel = 23;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level23bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Every level has a solution, yet your approach to the situation can vary."];
        a3wall = true;
        b2wall = true;
        b4wall = true;
        c2wall = true;
        c4wall = true;
        d2wall = true;
        d4wall = true;
        e3wall = true;
        
        a1n = 6;
        a2n = 14;
        a4n = 5;
        a5n = 20;
        b1n = 7;
        b3n = 28;
        b5n = 8;
        c1n = 13;
        c3n = 12;
        c5n = 11;
        d1n = 8;
        d3n = 16;
        d5n = 7;
        e1n = 20;
        e2n = 15;
        e4n = 2;
        e5n = 5;
        
        a5tower = true;
        b3tower = true;
        c3tower = true;
        d3tower = true;
        e1tower = true;
        
        towers = 5;
        topSteps = 24;
    }
    if (currentLevel == 24) {
        currentLevel = 24;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level24bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"As one invasion comes to an end, a new one prepares for initiation."];
        a1wall = true;
        a5wall = true;
        b1wall = true;
        b3wall = true;
        b4wall = true;
        b5wall = true;
        c1wall = true;
        c5wall = true;
        d1wall = true;
        d3wall = true;
        d4wall = true;
        d5wall = true;
        e1wall = true;
        e5wall = true;
        
        a2n = 3;
        a3n = 6;
        a4n = 15;
        b2n = 13;
        c2n = 22;
        c3n = 17;
        c4n = 14;
        d2n = 12;
        e2n = 10;
        e3n = 28;
        e4n = 4;
        
        a3tower = true;
        c2tower = true;
        c4tower = true;
        e3tower = true;
        
        towers = 4;
        topSteps = 16;
    }
    if (currentLevel == 25) {
        currentLevel = 25;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level25bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"The most difficult part is figuring out where to start."];
        a2wall = true;
        b2wall = true;
        c2wall = true;
        c4wall = true;
        d4wall = true;
        e4wall = true;
        
        a1n = 24;
        a3n = 6;
        a4n = 4;
        a5n = 2;
        b1n = 24;
        b3n = 32;
        b4n = 3;
        b5n = 6;
        c1n = 7;
        c3n = 8;
        c5n = 9;
        d1n = 4;
        d2n = 3;
        d3n = 34;
        d5n = 28;
        e1n = 6;
        e2n = 9;
        e3n = 5;
        e5n = 26;
        
        b1tower = true;
        b3tower = true;
        d3tower = true;
        d5tower = true;
        
        
        
        towers = 4;
        topSteps = 24;
    }
    if (currentLevel == 26) {
        currentLevel = 26;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level26bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"The solution is not always as it seems, think outside the box."];
        a1wall = true;
        b2wall = true;
        b3wall = true;
        c2wall = true;
        c4wall = true;
        d3wall = true;
        d4wall = true;
        e5wall = true;
        
        a2n = 20;
        a3n = 1;
        a4n = 5;
        a5n = 9;
        b1n = 3;
        b4n = 18;
        b5n = 8;
        c1n = 10;
        c3n = 21;
        c5n = 11;
        d1n = 7;
        d2n = 38;
        d5n = 2;
        e1n = 12;
        e2n = 16;
        e3n = 7;
        e4n = 32;
        
        a2tower = true;
        b4tower = true;
        d2tower = true;
        e4tower = true;
        
        
        
        towers = 4;
        topSteps = 30;
    }
    if (currentLevel == 27) {
        currentLevel = 27;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level27bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"The puzzles are not always solved from left to right."];
        a2wall = true;
        a3wall = true;
        a4wall = true;
        b3wall = true;
        b4wall = true;
        d2wall = true;
        d3wall = true;
        e2wall = true;
        e3wall = true;
        e4wall = true;
        
        a1n = 11;
        a5n = 44;
        b1n = 7;
        b2n = 4;
        b5n = 11;
        c1n = 10;
        c2n = 19;
        c3n = 38;
        c4n = 8;
        c5n = 14;
        d1n = 16;
        d4n = 13;
        d5n = 6;
        e1n = 46;
        e5n = 12;
        
        a5tower = true;
        c3tower = true;
        e1tower = true;
        
        
        
        towers = 3;
        topSteps = 18;
    }
    if (currentLevel == 28) {
        currentLevel = 28;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level28bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Trial and error are your two best friends in this level."];
        a3wall = true;
        b2wall = true;
        c1wall = true;
        c5wall = true;
        d4wall = true;
        e3wall = true;
        
        a1n = 20;
        a2n = 28;
        a4n = 4;
        a5n = 11;
        b1n = 44;
        b3n = 10;
        b4n = 5;
        b5n = 12;
        c2n = 8;
        c3n = 2;
        c4n = 7;
        d1n = 4;
        d2n = 12;
        d3n = 13;
        d5n = 42;
        e1n = 11;
        e2n = 9;
        e4n = 32;
        e5n = 22;
        
        a2tower = true;
        b1tower = true;
        d5tower = true;
        e4tower = true;
        
        towers = 4;
        topSteps = 26;
    }
    if (currentLevel == 29) {
        currentLevel = 29;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level29bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"One does not simply solve these difficult puzzles."];
        b1wall = true;
        b2wall = true;
        b4wall = true;
        b5wall = true;
        d1wall = true;
        d2wall = true;
        d4wall = true;
        d5wall = true;
        
        a1n = 38;
        a2n = 13;
        a3n = 3;
        a4n = 11;
        a5n = 6;
        b3n = 26;
        c1n = 18;
        c2n = 5;
        c3n = 14;
        c4n = 9;
        c5n = 11;
        d3n = 22;
        e1n = 7;
        e2n = 15;
        e3n = 8;
        e4n = 12;
        e5n = 42;
        
        a1tower = true;
        b3tower = true;
        d3tower = true;
        e5tower = true;
        
        towers = 4;
        topSteps = 22;
    }
    if (currentLevel == 30) {
        currentLevel = 30;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level30bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"The fact that these levels look like snowflakes is purely accidental."];
        a2wall = true;
        a4wall = true;
        b1wall = true;
        b5wall = true;
        c3wall = true;
        d1wall = true;
        d5wall = true;
        e2wall = true;
        e4wall = true;
        
        a1n = 32;
        a3n = 13;
        a5n = 12;
        b2n = 8;
        b3n = 5;
        b4n = 42;
        c1n = 7;
        c2n = 14;
        c4n = 17;
        c5n = 33;
        d2n = 36;
        d3n = 6;
        d4n = 9;
        e1n = 17;
        e3n = 11;
        e5n = 38;
        
        a1tower = true;
        b4tower = true;
        d2tower = true;
        e5tower = true;
        
        towers = 4;
        topSteps = 16;
    }
    if (currentLevel == 31) {
        currentLevel = 31;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level31bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Time is of no concern, you are ranked by the strategies you use."];
        b1wall = true;
        b5wall = true;
        c1wall = true;
        c2wall = true;
        c4wall = true;
        c5wall = true;
        d1wall = true;
        d5wall = true;
        
        a1n = 12;
        a2n = 32;
        a3n = 21;
        a4n = 7;
        a5n = 13;
        b2n = 10;
        b3n = 9;
        b4n = 42;
        c3n = 6;
        d2n = 36;
        d3n = 8;
        d4n = 17;
        e1n = 11;
        e2n = 4;
        e3n = 16;
        e4n = 46;
        e5n = 26;
        
        a2tower = true;
        b4tower = true;
        d2tower = true;
        e4tower = true;
        
        towers = 4;
        topSteps = 21;
    }
    if (currentLevel == 32) {
        currentLevel = 32;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level32bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Sometimes the simpler puzzles are the most fun to solve."];
        a2wall = true;
        a3wall = true;
        a4wall = true;
        b1wall = true;
        b3wall = true;
        b5wall = true;
        c1wall = true;
        c2wall = true;
        c4wall = true;
        c5wall = true;
        d1wall = true;
        d3wall = true;
        d5wall = true;
        e2wall = true;
        e3wall = true;
        e4wall = true;
        
        a1n = 34;
        a5n = 7;
        b2n = 18;
        b4n = 16;
        c3n = 10;
        d2n = 5;
        d4n = 22;
        e1n = 18;
        e5n = 17;
        
        a1tower = true;
        b4tower = true;
        d4tower = true;
        
        towers = 3;
        topSteps = 13;
    }
    if (currentLevel == 33) {
        currentLevel = 33;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level33bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"Just kidding, here's a real puzzle. Good luck."];
        a3wall = true;
        a4wall = true;
        a5wall = true;
        c2wall = true;
        c3wall = true;
        c4wall = true;
        e1wall = true;
        e2wall = true;
        e3wall = true;
        
        a1n = 4;
        a2n = 11;
        b1n = 8;
        b2n = 19;
        b3n = 22;
        b4n = 16;
        b5n = 9;
        c1n = 34;
        c5n = 26;
        d1n = 18;
        d2n = 9;
        d3n = 38;
        d4n = 3;
        d5n = 7;
        e4n = 16;
        e5n = 4;
        
        b3tower = true;
        c1tower = true;
        c5tower = true;
        d3tower = true;
        
        towers = 4;
        topSteps = 25;
    }
    if (currentLevel == 34) {
        currentLevel = 34;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level34bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"This level looks intimidating, but you already know the solution."];
        a2wall = true;
        a3wall = true;
        b2wall = true;
        c2wall = true;
        c4wall = true;
        d4wall = true;
        e3wall = true;
        e4wall = true;
        
        a1n = 46;
        a4n = 2;
        a5n = 25;
        b1n = 22;
        b3n = 10;
        b4n = 18;
        b5n = 7;
        c1n = 34;
        c3n = 28;
        c5n = 32;
        d1n = 3;
        d2n = 24;
        d3n = 13;
        d5n = 27;
        e1n = 29;
        e2n = 7;
        e5n = 42;
        
        a1tower = true;
        c1tower = true;
        c3tower = true;
        c5tower = true;
        e5tower = true;
        
        towers = 5;
        topSteps = 28;
    }
    if (currentLevel == 35) {
        currentLevel = 35;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level35bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"You know how to solve every puzzle, hurdle every obstacle."];
        b2wall = true;
        b4wall = true;
        c1wall = true;
        c2wall = true;
        c4wall = true;
        c5wall = true;
        d2wall = true;
        d4wall = true;
        
        a1n = 9;
        a2n = 44;
        a3n = 12;
        a4n = 2;
        a5n = 6;
        b1n = 28;
        b3n = 8;
        b5n = 38;
        c3n = 17;
        d1n = 36;
        d3n = 22;
        d5n = 27;
        e1n = 16;
        e2n = 7;
        e3n = 11;
        e4n = 46;
        e5n = 3;
        
        a2tower = true;
        b5tower = true;
        d1tower = true;
        e4tower = true;
        
        towers = 4;
        topSteps = 28;
    }
    if (currentLevel == 36) {
        currentLevel = 36;
        [bombIndicator setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bomb-indicator%i.png", level36bombs]]];
        descriptionLabel.text = [NSString stringWithFormat:@"This is the final level of Exponential Invasion. Thanks for playing."];
        b3wall = true;
        d3wall = true;
        
        a1n = 27;
        a2n = 16;
        a3n = 38;
        a4n = 14;
        a5n = 17;
        b1n = 13;
        b2n = 7;
        b4n = 3;
        b5n = 22;
        c1n = 56;
        c2n = 18;
        c3n = 42;
        c4n = 8;
        c5n = 52;
        d1n = 25;
        d2n = 1;
        d4n = 4;
        d5n = 11;
        e1n = 9;
        e2n = 6;
        e3n = 44;
        e4n = 31;
        e5n = 5;
        
        a3tower = true;
        c1tower = true;
        c3tower = true;
        c5tower = true;
        e3tower = true;
        
        towers = 5;
        topSteps = 28;
    }
    /*
    if (currentLevel == 19) {
        [self clearLevel];
        currentLevel = 19;
        descriptionLabel.text = [NSString stringWithFormat:@"With negatives, you can reduce the value of your numbers."];
        a1wall = true;
        a2wall = true;
        a3wall = true;
        a4wall = true;
        a5wall = true;
        b1wall = true;
        b2wall = true;
        b4wall = true;
        b5wall = true;
        c1wall = true;
        c3wall = true;
        c5wall = true;
        d1wall = true;
        d2wall = true;
        d4wall = true;
        d5wall = true;
        e1wall = true;
        e2wall = true;
        e3wall = true;
        e4wall = true;
        e5wall = true;
        
        b3n = 10;
        c2n = 6;
        c4n = 6;
        d3n = -1;
        
        b3tower = true;
        
        towers = 1;
        [self loadLevel];
    }
    if (currentLevel == 20) {
        [self clearLevel];
        currentLevel = 20;
        descriptionLabel.text = [NSString stringWithFormat:@"You cannot move negatives, you need to add positive numbers to them."];
        a3n = -5;
        b1n = 6;
        b3n = -5;
        c1n = 6;
        c3n = -5;
        c5n = 12;
        d1n = 6;
        d3n = -5;
        e3n = -5;
        
        c5tower = true;
        
        towers = 1;
        [self loadLevel];
    }
    if (currentLevel == 21) {
        [self clearLevel];
        currentLevel = 21;
        descriptionLabel.text = [NSString stringWithFormat:@"Use negatives to create unequal numbers, then solve the puzzle."];
        a1wall = true;
        a2wall = true;
        a3wall = true;
        a4wall = true;
        b1wall = true;
        b5wall = true;
        c1wall = true;
        c5wall = true;
        d1wall = true;
        d5wall = true;
        e2wall = true;
        e3wall = true;
        e4wall = true;
        e5wall = true;
        
        a5n = 20;
        b2n = -4;
        b3n = 7;
        b4n = 7;
        c2n = 7;
        c3n = 7;
        c4n = 7;
        d2n = 7;
        d3n = 7;
        d4n = -6;
        e1n = 16;
        
        a5tower = true;
        e1tower = true;
        
        towers = 2;
        [self loadLevel];
    }
    if (currentLevel == 22) {
        [self clearLevel];
        currentLevel = 22;
        descriptionLabel.text = [NSString stringWithFormat:@"Despite the similarities, negatives and blue numbers are very different."];
        a1wall = true;
        a2wall = true;
        a3wall = true;
        a4wall = true;
        a5wall = true;
        b1wall = true;
        b2wall = true;
        b4wall = true;
        b5wall = true;
        d1wall = true;
        d2wall = true;
        d4wall = true;
        d5wall = true;
        e1wall = true;
        e2wall = true;
        e3wall = true;
        e4wall = true;
        e5wall = true;
        
        b3n = 5;
        c1n = 3;
        c2n = 8;
        c3n = 2;
        c4n = -8;
        c5n = 16;
        d3n = 7;
        
        c5tower = true;
        
        towers = 1;
        [self loadLevel];
    }
    */
    [self loadLevel];
}

-(void)resetProgress {
}

-(IBAction)deathYes {
    [self snapSound];
    progress = 1;
    [[NSUserDefaults standardUserDefaults] setInteger:progress forKey:@"savedProgress"];
    level1bombs = 0;
    level2bombs = 0;
    level3bombs = 0;
    level4bombs = 0;
    level5bombs = 0;
    level6bombs = 0;
    level7bombs = 0;
    level8bombs = 0;
    level9bombs = 0;
    level10bombs = 0;
    level11bombs = 0;
    level12bombs = 0;
    level13bombs = 0;
    level14bombs = 0;
    level15bombs = 0;
    level16bombs = 0;
    level17bombs = 0;
    level18bombs = 0;
    level19bombs = 0;
    level20bombs = 0;
    level21bombs = 0;
    level22bombs = 0;
    level23bombs = 0;
    level24bombs = 0;
    level25bombs = 0;
    level26bombs = 0;
    level27bombs = 0;
    level28bombs = 0;
    level29bombs = 0;
    level30bombs = 0;
    level31bombs = 0;
    level32bombs = 0;
    level33bombs = 0;
    level34bombs = 0;
    level35bombs = 0;
    level36bombs = 0;
    [[NSUserDefaults standardUserDefaults] setInteger:level1bombs forKey:@"savedBombs1"];
    [[NSUserDefaults standardUserDefaults] setInteger:level2bombs forKey:@"savedBombs2"];
    [[NSUserDefaults standardUserDefaults] setInteger:level3bombs forKey:@"savedBombs3"];
    [[NSUserDefaults standardUserDefaults] setInteger:level4bombs forKey:@"savedBombs4"];
    [[NSUserDefaults standardUserDefaults] setInteger:level5bombs forKey:@"savedBombs5"];
    [[NSUserDefaults standardUserDefaults] setInteger:level6bombs forKey:@"savedBombs6"];
    [[NSUserDefaults standardUserDefaults] setInteger:level7bombs forKey:@"savedBombs7"];
    [[NSUserDefaults standardUserDefaults] setInteger:level8bombs forKey:@"savedBombs8"];
    [[NSUserDefaults standardUserDefaults] setInteger:level9bombs forKey:@"savedBombs9"];
    [[NSUserDefaults standardUserDefaults] setInteger:level10bombs forKey:@"savedBombs10"];
    [[NSUserDefaults standardUserDefaults] setInteger:level11bombs forKey:@"savedBombs11"];
    [[NSUserDefaults standardUserDefaults] setInteger:level12bombs forKey:@"savedBombs12"];
    [[NSUserDefaults standardUserDefaults] setInteger:level13bombs forKey:@"savedBombs13"];
    [[NSUserDefaults standardUserDefaults] setInteger:level14bombs forKey:@"savedBombs14"];
    [[NSUserDefaults standardUserDefaults] setInteger:level15bombs forKey:@"savedBombs15"];
    [[NSUserDefaults standardUserDefaults] setInteger:level16bombs forKey:@"savedBombs16"];
    [[NSUserDefaults standardUserDefaults] setInteger:level17bombs forKey:@"savedBombs17"];
    [[NSUserDefaults standardUserDefaults] setInteger:level18bombs forKey:@"savedBombs18"];
    [[NSUserDefaults standardUserDefaults] setInteger:level19bombs forKey:@"savedBombs19"];
    [[NSUserDefaults standardUserDefaults] setInteger:level20bombs forKey:@"savedBombs20"];
    [[NSUserDefaults standardUserDefaults] setInteger:level21bombs forKey:@"savedBombs21"];
    [[NSUserDefaults standardUserDefaults] setInteger:level22bombs forKey:@"savedBombs22"];
    [[NSUserDefaults standardUserDefaults] setInteger:level23bombs forKey:@"savedBombs23"];
    [[NSUserDefaults standardUserDefaults] setInteger:level24bombs forKey:@"savedBombs24"];
    [[NSUserDefaults standardUserDefaults] setInteger:level25bombs forKey:@"savedBombs25"];
    [[NSUserDefaults standardUserDefaults] setInteger:level26bombs forKey:@"savedBombs26"];
    [[NSUserDefaults standardUserDefaults] setInteger:level27bombs forKey:@"savedBombs27"];
    [[NSUserDefaults standardUserDefaults] setInteger:level28bombs forKey:@"savedBombs28"];
    [[NSUserDefaults standardUserDefaults] setInteger:level29bombs forKey:@"savedBombs29"];
    [[NSUserDefaults standardUserDefaults] setInteger:level30bombs forKey:@"savedBombs30"];
    [[NSUserDefaults standardUserDefaults] setInteger:level31bombs forKey:@"savedBombs31"];
    [[NSUserDefaults standardUserDefaults] setInteger:level32bombs forKey:@"savedBombs32"];
    [[NSUserDefaults standardUserDefaults] setInteger:level33bombs forKey:@"savedBombs33"];
    [[NSUserDefaults standardUserDefaults] setInteger:level34bombs forKey:@"savedBombs34"];
    [[NSUserDefaults standardUserDefaults] setInteger:level35bombs forKey:@"savedBombs35"];
    [[NSUserDefaults standardUserDefaults] setInteger:level36bombs forKey:@"savedBombs36"];
    [self loadProgress];
    [self loadTotalBombs];

    [self endDeath];
}

-(IBAction)deathNo {
    [self snapSound];
    [self endDeath];
}

-(void)startDeath {
    deathView.hidden = false;
}

-(void)endDeath {
    deathView.hidden = true;
}

-(IBAction)killProgress {
    [self snapSound];
    [self startDeath];
}

-(void)snapSound {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"finger_snap" ofType:@"wav"];
    theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    theAudio.volume = 0.5;
    [theAudio play];
}

-(void)explodeSound {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"explosion" ofType:@"wav"];
    theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    theAudio.volume = 0.5;
    [theAudio play];
}

-(void)loadTotalBombs {
    totalBombs = level1bombs + level2bombs + level3bombs + level4bombs + level5bombs + level6bombs + level7bombs + level8bombs + level9bombs + level10bombs + level11bombs + level12bombs + level13bombs + level14bombs + level15bombs + level16bombs + level17bombs + level18bombs + level19bombs + level20bombs + level21bombs + level22bombs + level23bombs + level24bombs + level25bombs + level26bombs + level27bombs + level28bombs + level29bombs + level30bombs + level31bombs + level32bombs + level33bombs + level34bombs + level35bombs + level36bombs;
    bombsLabel.text = [NSString stringWithFormat:@"%i/%i", totalBombs, levelsCount * 3];
}

-(void)loadProgress {
    //temporary solution, if game has no progress yet make sure level 1 never gets locked
    if (progress == 0) {
        progress = 1;
    }
    
    [self resetProgress];
    levelLock.hidden = false;
    if (progress >= currentLevel) {
        levelLock.hidden = true;
    }
    //NSLog(@"Progress loaded, progress is %i and currentLevel is %i", progress, currentLevel);
}

-(void)loadLevel {
    //NSLog(@"Current level: %i", currentLevel);
    [self freshGrid];
    
    steps = 0;
    nilSteps = towers;
    
    levelLabel.text = [NSString stringWithFormat:@"ZONE %i", currentLevel];
    
    a1l.text = [NSString stringWithFormat:@"%i", a1n];
    a2l.text = [NSString stringWithFormat:@"%i", a2n];
    a3l.text = [NSString stringWithFormat:@"%i", a3n];
    a4l.text = [NSString stringWithFormat:@"%i", a4n];
    a5l.text = [NSString stringWithFormat:@"%i", a5n];
    b1l.text = [NSString stringWithFormat:@"%i", b1n];
    b2l.text = [NSString stringWithFormat:@"%i", b2n];
    b3l.text = [NSString stringWithFormat:@"%i", b3n];
    b4l.text = [NSString stringWithFormat:@"%i", b4n];
    b5l.text = [NSString stringWithFormat:@"%i", b5n];
    c1l.text = [NSString stringWithFormat:@"%i", c1n];
    c2l.text = [NSString stringWithFormat:@"%i", c2n];
    c3l.text = [NSString stringWithFormat:@"%i", c3n];
    c4l.text = [NSString stringWithFormat:@"%i", c4n];
    c5l.text = [NSString stringWithFormat:@"%i", c5n];
    d1l.text = [NSString stringWithFormat:@"%i", d1n];
    d2l.text = [NSString stringWithFormat:@"%i", d2n];
    d3l.text = [NSString stringWithFormat:@"%i", d3n];
    d4l.text = [NSString stringWithFormat:@"%i", d4n];
    d5l.text = [NSString stringWithFormat:@"%i", d5n];
    e1l.text = [NSString stringWithFormat:@"%i", e1n];
    e2l.text = [NSString stringWithFormat:@"%i", e2n];
    e3l.text = [NSString stringWithFormat:@"%i", e3n];
    e4l.text = [NSString stringWithFormat:@"%i", e4n];
    e5l.text = [NSString stringWithFormat:@"%i", e5n];
    
    [self disableWalls];
    
    if (currentLevel > 0 && currentLevel < 7) {
        categoryLabel.text = [NSString stringWithFormat:@"Bootcamp"];
    }
    if (currentLevel > 6) {
        categoryLabel.text = [NSString stringWithFormat:@"The Shores"];
    }
    if (currentLevel > 18) {
        categoryLabel.text = [NSString stringWithFormat:@"The Frontline"];
    }
    if (currentLevel > 24) {
        categoryLabel.text = [NSString stringWithFormat:@"The Cliffside"];
    }
    
    /*
    restartButton.hidden = false;
    restartButton.enabled = true;
    cancelButton.hidden = true;
    cancelButton.enabled = false;
    */
    
    myScrollView.hidden = true;
    endView.hidden = true;
}

-(void)winLevel {
    if (currentLevel >= progress) {
        progress = currentLevel + 1;
        [[NSUserDefaults standardUserDefaults] setInteger:progress forKey:@"savedProgress"];
    }
    restartButton.enabled = false;
    steps = steps - nilSteps;
    endView.hidden = false;
    if (steps < topSteps) {
        evaluationLabel.text = [NSString stringWithFormat:@"You have finished level %i while only taking %i steps. You have ignited all three bombs for this level.", currentLevel, steps];
    }
    if (steps == topSteps) {
        evaluationLabel.text = [NSString stringWithFormat:@"You have finished level %i while only taking %i steps. You have ignited all three bombs for this level.", currentLevel, steps];
    }
    if (steps > topSteps) {
        evaluationLabel.text = [NSString stringWithFormat:@"You have finished level %i while taking %i steps, try again with %i less steps to ignite all three bombs.", currentLevel, steps, steps-topSteps];
    }
    if (steps <= topSteps) {
        [endBombs setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bombs3.png"]]];
        if (currentLevel == 1) {
            if (level1bombs < 3) {
                level1bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level1bombs forKey:@"savedBombs1"];
            }
        }
        if (currentLevel == 2) {
            if (level2bombs < 3) {
                level2bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level2bombs forKey:@"savedBombs2"];
            }
        }
        if (currentLevel == 3) {
            if (level3bombs < 3) {
                level3bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level3bombs forKey:@"savedBombs3"];
            }
        }
        if (currentLevel == 4) {
            if (level4bombs < 3) {
                level4bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level4bombs forKey:@"savedBombs4"];
            }
        }
        if (currentLevel == 5) {
            if (level5bombs < 3) {
                level5bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level5bombs forKey:@"savedBombs5"];
            }
        }
        if (currentLevel == 6) {
            if (level6bombs < 3) {
                level6bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level6bombs forKey:@"savedBombs6"];
            }
        }
        if (currentLevel == 7) {
            if (level7bombs < 3) {
                level7bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level7bombs forKey:@"savedBombs7"];
            }
        }
        if (currentLevel == 8) {
            if (level8bombs < 3) {
                level8bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level8bombs forKey:@"savedBombs8"];
            }
        }
        if (currentLevel == 9) {
            if (level9bombs < 3) {
                level9bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level9bombs forKey:@"savedBombs9"];
            }
        }
        if (currentLevel == 10) {
            if (level10bombs < 3) {
                level10bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level10bombs forKey:@"savedBombs10"];
            }
        }
        if (currentLevel == 11) {
            if (level11bombs < 3) {
                level11bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level11bombs forKey:@"savedBombs11"];
            }
        }
        if (currentLevel == 12) {
            if (level12bombs < 3) {
                level12bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level12bombs forKey:@"savedBombs12"];
            }
        }
        if (currentLevel == 13) {
            if (level13bombs < 3) {
                level13bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level13bombs forKey:@"savedBombs13"];
            }
        }
        if (currentLevel == 14) {
            if (level14bombs < 3) {
                level14bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level14bombs forKey:@"savedBombs14"];
            }
        }
        if (currentLevel == 15) {
            if (level15bombs < 3) {
                level15bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level15bombs forKey:@"savedBombs15"];
            }
        }
        if (currentLevel == 16) {
            if (level16bombs < 3) {
                level16bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level16bombs forKey:@"savedBombs16"];
            }
        }
        if (currentLevel == 17) {
            if (level17bombs < 3) {
                level17bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level17bombs forKey:@"savedBombs17"];
            }
        }
        if (currentLevel == 18) {
            if (level18bombs < 3) {
                level18bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level18bombs forKey:@"savedBombs18"];
            }
        }
        if (currentLevel == 19) {
            if (level19bombs < 3) {
                level19bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level19bombs forKey:@"savedBombs19"];
            }
        }
        if (currentLevel == 20) {
            if (level20bombs < 3) {
                level20bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level20bombs forKey:@"savedBombs20"];
            }
        }
        if (currentLevel == 21) {
            if (level21bombs < 3) {
                level21bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level21bombs forKey:@"savedBombs21"];
            }
        }
        if (currentLevel == 22) {
            if (level22bombs < 3) {
                level22bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level22bombs forKey:@"savedBombs22"];
            }
        }
        if (currentLevel == 23) {
            if (level23bombs < 3) {
                level23bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level23bombs forKey:@"savedBombs23"];
            }
        }
        if (currentLevel == 24) {
            if (level24bombs < 3) {
                level24bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level24bombs forKey:@"savedBombs24"];
            }
        }
        if (currentLevel == 25) {
            if (level25bombs < 3) {
                level25bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level25bombs forKey:@"savedBombs25"];
            }
        }
        if (currentLevel == 26) {
            if (level26bombs < 3) {
                level26bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level26bombs forKey:@"savedBombs26"];
            }
        }
        if (currentLevel == 27) {
            if (level27bombs < 3) {
                level27bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level27bombs forKey:@"savedBombs27"];
            }
        }
        if (currentLevel == 28) {
            if (level28bombs < 3) {
                level28bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level28bombs forKey:@"savedBombs28"];
            }
        }
        if (currentLevel == 29) {
            if (level29bombs < 3) {
                level29bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level29bombs forKey:@"savedBombs29"];
            }
        }
        if (currentLevel == 30) {
            if (level30bombs < 3) {
                level30bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level30bombs forKey:@"savedBombs30"];
            }
        }
        if (currentLevel == 31) {
            if (level31bombs < 3) {
                level31bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level31bombs forKey:@"savedBombs31"];
            }
        }
        if (currentLevel == 32) {
            if (level32bombs < 3) {
                level32bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level32bombs forKey:@"savedBombs32"];
            }
        }
        if (currentLevel == 33) {
            if (level33bombs < 3) {
                level33bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level33bombs forKey:@"savedBombs33"];
            }
        }
        if (currentLevel == 34) {
            if (level34bombs < 3) {
                level34bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level34bombs forKey:@"savedBombs34"];
            }
        }
        if (currentLevel == 35) {
            if (level35bombs < 3) {
                level35bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level35bombs forKey:@"savedBombs35"];
            }
        }
        if (currentLevel == 36) {
            if (level36bombs < 3) {
                level36bombs = 3;
                [[NSUserDefaults standardUserDefaults] setInteger:level36bombs forKey:@"savedBombs36"];
            }
        }
    }
    
    if (steps > topSteps && steps < topSteps*2) {
        [endBombs setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bombs2.png"]]];
        if (currentLevel == 1) {
            if (level1bombs < 2) {
                level1bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level1bombs forKey:@"savedBombs1"];
            }
        }
        if (currentLevel == 2) {
            if (level2bombs < 2) {
                level2bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level2bombs forKey:@"savedBombs2"];
            }
        }
        if (currentLevel == 3) {
            if (level3bombs < 2) {
                level3bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level3bombs forKey:@"savedBombs3"];
            }
        }
        if (currentLevel == 4) {
            if (level4bombs < 2) {
                level4bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level4bombs forKey:@"savedBombs4"];
            }
        }
        if (currentLevel == 5) {
            if (level5bombs < 2) {
                level5bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level5bombs forKey:@"savedBombs5"];
            }
        }
        if (currentLevel == 6) {
            if (level6bombs < 2) {
                level6bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level6bombs forKey:@"savedBombs6"];
            }
        }
        if (currentLevel == 7) {
            if (level7bombs < 2) {
                level7bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level7bombs forKey:@"savedBombs7"];
            }
        }
        if (currentLevel == 8) {
            if (level8bombs < 2) {
                level8bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level8bombs forKey:@"savedBombs8"];
            }
        }
        if (currentLevel == 9) {
            if (level9bombs < 2) {
                level9bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level9bombs forKey:@"savedBombs9"];
            }
        }
        if (currentLevel == 10) {
            if (level10bombs < 2) {
                level10bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level10bombs forKey:@"savedBombs10"];
            }
        }
        if (currentLevel == 11) {
            if (level11bombs < 2) {
                level11bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level11bombs forKey:@"savedBombs11"];
            }
        }
        if (currentLevel == 12) {
            if (level12bombs < 2) {
                level12bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level12bombs forKey:@"savedBombs12"];
            }
        }
        if (currentLevel == 13) {
            if (level13bombs < 2) {
                level13bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level13bombs forKey:@"savedBombs13"];
            }
        }
        if (currentLevel == 14) {
            if (level14bombs < 2) {
                level14bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level14bombs forKey:@"savedBombs14"];
            }
        }
        if (currentLevel == 15) {
            if (level15bombs < 2) {
                level15bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level15bombs forKey:@"savedBombs15"];
            }
        }
        if (currentLevel == 16) {
            if (level16bombs < 2) {
                level16bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level16bombs forKey:@"savedBombs16"];
            }
        }
        if (currentLevel == 17) {
            if (level17bombs < 2) {
                level17bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level17bombs forKey:@"savedBombs17"];
            }
        }
        if (currentLevel == 18) {
            if (level18bombs < 2) {
                level18bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level18bombs forKey:@"savedBombs18"];
            }
        }
        if (currentLevel == 19) {
            if (level19bombs < 2) {
                level19bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level19bombs forKey:@"savedBombs19"];
            }
        }
        if (currentLevel == 20) {
            if (level20bombs < 2) {
                level20bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level20bombs forKey:@"savedBombs20"];
            }
        }
        if (currentLevel == 21) {
            if (level21bombs < 2) {
                level21bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level21bombs forKey:@"savedBombs21"];
            }
        }
        if (currentLevel == 22) {
            if (level22bombs < 2) {
                level22bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level22bombs forKey:@"savedBombs22"];
            }
        }
        if (currentLevel == 23) {
            if (level23bombs < 2) {
                level23bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level23bombs forKey:@"savedBombs23"];
            }
        }
        if (currentLevel == 24) {
            if (level24bombs < 2) {
                level24bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level24bombs forKey:@"savedBombs24"];
            }
        }
        if (currentLevel == 25) {
            if (level25bombs < 2) {
                level25bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level25bombs forKey:@"savedBombs25"];
            }
        }
        if (currentLevel == 26) {
            if (level26bombs < 2) {
                level26bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level26bombs forKey:@"savedBombs26"];
            }
        }
        if (currentLevel == 27) {
            if (level27bombs < 2) {
                level27bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level27bombs forKey:@"savedBombs27"];
            }
        }
        if (currentLevel == 28) {
            if (level28bombs < 2) {
                level28bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level28bombs forKey:@"savedBombs28"];
            }
        }
        if (currentLevel == 29) {
            if (level29bombs < 2) {
                level29bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level29bombs forKey:@"savedBombs29"];
            }
        }
        if (currentLevel == 30) {
            if (level30bombs < 2) {
                level30bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level30bombs forKey:@"savedBombs30"];
            }
        }
        if (currentLevel == 31) {
            if (level31bombs < 2) {
                level31bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level31bombs forKey:@"savedBombs31"];
            }
        }
        if (currentLevel == 32) {
            if (level32bombs < 2) {
                level32bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level32bombs forKey:@"savedBombs32"];
            }
        }
        if (currentLevel == 33) {
            if (level33bombs < 2) {
                level33bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level33bombs forKey:@"savedBombs33"];
            }
        }
        if (currentLevel == 34) {
            if (level34bombs < 2) {
                level34bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level34bombs forKey:@"savedBombs34"];
            }
        }
        if (currentLevel == 35) {
            if (level35bombs < 2) {
                level35bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level35bombs forKey:@"savedBombs35"];
            }
        }
        if (currentLevel == 36) {
            if (level36bombs < 2) {
                level36bombs = 2;
                [[NSUserDefaults standardUserDefaults] setInteger:level36bombs forKey:@"savedBombs36"];
            }
        }
    }
    if (steps >= topSteps*2) {
        [endBombs setImage:[UIImage imageNamed:[NSString stringWithFormat:@"bombs1.png"]]];
        if (currentLevel == 1) {
            if (level1bombs < 1) {
                level1bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level1bombs forKey:@"savedBombs1"];
            }
        }
        if (currentLevel == 2) {
            if (level2bombs < 1) {
                level2bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level2bombs forKey:@"savedBombs2"];
            }
        }
        if (currentLevel == 3) {
            if (level3bombs < 1) {
                level3bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level3bombs forKey:@"savedBombs3"];
            }
        }
        if (currentLevel == 4) {
            if (level4bombs < 1) {
                level4bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level4bombs forKey:@"savedBombs4"];
            }
        }
        if (currentLevel == 5) {
            if (level5bombs < 1) {
                level5bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level5bombs forKey:@"savedBombs5"];
            }
        }
        if (currentLevel == 6) {
            if (level6bombs < 1) {
                level6bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level6bombs forKey:@"savedBombs6"];
            }
        }
        if (currentLevel == 7) {
            if (level7bombs < 1) {
                level7bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level7bombs forKey:@"savedBombs7"];
            }
        }
        if (currentLevel == 8) {
            if (level8bombs < 1) {
                level8bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level8bombs forKey:@"savedBombs8"];
            }
        }
        if (currentLevel == 9) {
            if (level9bombs < 1) {
                level9bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level9bombs forKey:@"savedBombs9"];
            }
        }
        if (currentLevel == 10) {
            if (level10bombs < 1) {
                level10bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level10bombs forKey:@"savedBombs10"];
            }
        }
        if (currentLevel == 11) {
            if (level11bombs < 1) {
                level11bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level11bombs forKey:@"savedBombs11"];
            }
        }
        if (currentLevel == 12) {
            if (level12bombs < 1) {
                level12bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level12bombs forKey:@"savedBombs12"];
            }
        }
        if (currentLevel == 13) {
            if (level13bombs < 1) {
                level13bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level13bombs forKey:@"savedBombs13"];
            }
        }
        if (currentLevel == 14) {
            if (level14bombs < 1) {
                level14bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level14bombs forKey:@"savedBombs14"];
            }
        }
        if (currentLevel == 15) {
            if (level15bombs < 1) {
                level15bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level15bombs forKey:@"savedBombs15"];
            }
        }
        if (currentLevel == 16) {
            if (level16bombs < 1) {
                level16bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level16bombs forKey:@"savedBombs16"];
            }
        }
        if (currentLevel == 17) {
            if (level17bombs < 1) {
                level17bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level17bombs forKey:@"savedBombs17"];
            }
        }
        if (currentLevel == 18) {
            if (level18bombs < 1) {
                level18bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level18bombs forKey:@"savedBombs18"];
            }
        }
        if (currentLevel == 19) {
            if (level19bombs < 1) {
                level19bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level19bombs forKey:@"savedBombs19"];
            }
        }
        if (currentLevel == 20) {
            if (level20bombs < 1) {
                level20bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level20bombs forKey:@"savedBombs20"];
            }
        }
        if (currentLevel == 21) {
            if (level21bombs < 1) {
                level21bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level21bombs forKey:@"savedBombs21"];
            }
        }
        if (currentLevel == 22) {
            if (level22bombs < 1) {
                level22bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level22bombs forKey:@"savedBombs22"];
            }
        }
        if (currentLevel == 23) {
            if (level23bombs < 1) {
                level23bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level23bombs forKey:@"savedBombs23"];
            }
        }
        if (currentLevel == 24) {
            if (level24bombs < 1) {
                level24bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level24bombs forKey:@"savedBombs24"];
            }
        }
        if (currentLevel == 25) {
            if (level25bombs < 1) {
                level25bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level25bombs forKey:@"savedBombs25"];
            }
        }
        if (currentLevel == 26) {
            if (level26bombs < 1) {
                level26bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level26bombs forKey:@"savedBombs26"];
            }
        }
        if (currentLevel == 27) {
            if (level27bombs < 1) {
                level27bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level27bombs forKey:@"savedBombs27"];
            }
        }
        if (currentLevel == 28) {
            if (level28bombs < 1) {
                level28bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level28bombs forKey:@"savedBombs28"];
            }
        }
        if (currentLevel == 29) {
            if (level29bombs < 1) {
                level29bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level29bombs forKey:@"savedBombs29"];
            }
        }
        if (currentLevel == 30) {
            if (level30bombs < 1) {
                level30bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level30bombs forKey:@"savedBombs30"];
            }
        }
        if (currentLevel == 31) {
            if (level31bombs < 1) {
                level31bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level31bombs forKey:@"savedBombs31"];
            }
        }
        if (currentLevel == 32) {
            if (level32bombs < 1) {
                level32bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level32bombs forKey:@"savedBombs32"];
            }
        }
        if (currentLevel == 33) {
            if (level33bombs < 1) {
                level33bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level33bombs forKey:@"savedBombs33"];
            }
        }
        if (currentLevel == 34) {
            if (level34bombs < 1) {
                level34bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level34bombs forKey:@"savedBombs34"];
            }
        }
        if (currentLevel == 35) {
            if (level35bombs < 1) {
                level35bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level35bombs forKey:@"savedBombs35"];
            }
        }
        if (currentLevel == 36) {
            if (level36bombs < 1) {
                level36bombs = 1;
                [[NSUserDefaults standardUserDefaults] setInteger:level36bombs forKey:@"savedBombs36"];
            }
        }
    }
}

-(IBAction)retry {
    if (endView.hidden == false) {
        [self snapSound];
    }
    else {
        [self.view shakeX];
        [self explodeSound];
    }
    [self level:currentLevel];
}
-(IBAction)next {
    if (endView.hidden == false) {
        [self snapSound];
    }
    currentLevel = currentLevel + 1;
    if (currentLevel == levelsCount + 1) {
        currentLevel = 1;
    }
    [self level:currentLevel];
}

-(IBAction)tweet {
    [self snapSound];
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        
        SLComposeViewController *tweetSheet =[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText: [NSString stringWithFormat:@"I have finished level %i while only taking %i steps in Exponential Invasion by @mguniverse!", currentLevel, steps]];
        
        [self presentViewController:tweetSheet animated:YES completion:nil];
        
    }
    else {
        //This alreat tells the user that they can't use built in socal interegration and why they can't.
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry" message:@"The tweet could not be tweeted, connect to your Twitter account via the Settings app and try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }
}

-(void)clearLevel {
    a1tower = false;
    a2tower = false;
    a3tower = false;
    a4tower = false;
    a5tower = false;
    b1tower = false;
    b2tower = false;
    b3tower = false;
    b4tower = false;
    b5tower = false;
    c1tower = false;
    c2tower = false;
    c3tower = false;
    c4tower = false;
    c5tower = false;
    d1tower = false;
    d2tower = false;
    d3tower = false;
    d4tower = false;
    d5tower = false;
    e1tower = false;
    e2tower = false;
    e3tower = false;
    e4tower = false;
    e5tower = false;
    
    a1wall = false;
    a2wall = false;
    a3wall = false;
    a4wall = false;
    a5wall = false;
    b1wall = false;
    b2wall = false;
    b3wall = false;
    b4wall = false;
    b5wall = false;
    c1wall = false;
    c2wall = false;
    c3wall = false;
    c4wall = false;
    c5wall = false;
    d1wall = false;
    d2wall = false;
    d3wall = false;
    d4wall = false;
    d5wall = false;
    e1wall = false;
    e2wall = false;
    e3wall = false;
    e4wall = false;
    e5wall = false;
    
    a1n = 0;
    a2n = 0;
    a3n = 0;
    a4n = 0;
    a5n = 0;
    b1n = 0;
    b2n = 0;
    b3n = 0;
    b4n = 0;
    b5n = 0;
    c1n = 0;
    c2n = 0;
    c3n = 0;
    c4n = 0;
    c5n = 0;
    d1n = 0;
    d2n = 0;
    d3n = 0;
    d4n = 0;
    d5n = 0;
    e1n = 0;
    e2n = 0;
    e3n = 0;
    e4n = 0;
    e5n = 0;
    
    a1i.hidden = false;
    a2i.hidden = false;
    a3i.hidden = false;
    a4i.hidden = false;
    a5i.hidden = false;
    b1i.hidden = false;
    b2i.hidden = false;
    b3i.hidden = false;
    b4i.hidden = false;
    b5i.hidden = false;
    c1i.hidden = false;
    c2i.hidden = false;
    c3i.hidden = false;
    c4i.hidden = false;
    c5i.hidden = false;
    d1i.hidden = false;
    d2i.hidden = false;
    d3i.hidden = false;
    d4i.hidden = false;
    d5i.hidden = false;
    e1i.hidden = false;
    e2i.hidden = false;
    e3i.hidden = false;
    e4i.hidden = false;
    e5i.hidden = false;
    
    if (a1n <= 0) {
        a1l.hidden = false;
    }
    if (a1n <= 0) {
        a2l.hidden = false;
    }
    if (a1n <= 0) {
        a3l.hidden = false;
    }
    if (a1n <= 0) {
        a4l.hidden = false;
    }
    if (a1n <= 0) {
        a5l.hidden = false;
    }
    if (a1n <= 0) {
        b1l.hidden = false;
    }
    if (a1n <= 0) {
        b2l.hidden = false;
    }
    if (a1n <= 0) {
        b3l.hidden = false;
    }
    if (a1n <= 0) {
        b4l.hidden = false;
    }
    if (a1n <= 0) {
        b5l.hidden = false;
    }
    if (a1n <= 0) {
        c1l.hidden = false;
    }
    if (a1n <= 0) {
        c2l.hidden = false;
    }
    if (a1n <= 0) {
        c3l.hidden = false;
    }
    if (a1n <= 0) {
        c4l.hidden = false;
    }
    if (a1n <= 0) {
        c5l.hidden = false;
    }
    if (a1n <= 0) {
        d1l.hidden = false;
    }
    if (a1n <= 0) {
        d2l.hidden = false;
    }
    if (a1n <= 0) {
        d3l.hidden = false;
    }
    if (a1n <= 0) {
        d4l.hidden = false;
    }
    if (a1n <= 0) {
        d5l.hidden = false;
    }
    if (a1n <= 0) {
        e1l.hidden = false;
    }
    if (a1n <= 0) {
        e2l.hidden = false;
    }
    if (a1n <= 0) {
        e3l.hidden = false;
    }
    if (a1n <= 0) {
        e4l.hidden = false;
    }
    if (a1n <= 0) {
        e5l.hidden = false;
    }
    
    towers = 0;
}

-(void)prepareForSelection {
    [self startJiggle];
    [self gameplayInterface];
    
    a1b.enabled = false;
    a2b.enabled = false;
    a3b.enabled = false;
    a4b.enabled = false;
    a5b.enabled = false;
    b1b.enabled = false;
    b2b.enabled = false;
    b3b.enabled = false;
    b4b.enabled = false;
    b5b.enabled = false;
    c1b.enabled = false;
    c2b.enabled = false;
    c3b.enabled = false;
    c4b.enabled = false;
    c5b.enabled = false;
    d1b.enabled = false;
    d2b.enabled = false;
    d3b.enabled = false;
    d4b.enabled = false;
    d5b.enabled = false;
    e1b.enabled = false;
    e2b.enabled = false;
    e3b.enabled = false;
    e4b.enabled = false;
    e5b.enabled = false;
    
    [self disableWalls];
    
    [a1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [a2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [a3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [a4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [a5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [b1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [b5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [c1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [c5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [d1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [d5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [e1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [e2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [e3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [e4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    [e5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-bad.png"]]];
    
    if (interface >= 0) {
        restartButton.hidden = true;
        restartButton.enabled = false;
        cancelButton.hidden = false;
        cancelButton.enabled = true;
        
        buttonLabel2.text = [NSString stringWithFormat:@"Cancel"];
    }
}

-(void)freshGrid {
    [self stopJiggle];
    steps = steps + 1;
    
    a1if = false;
    a2if = false;
    a3if = false;
    a4if = false;
    a5if = false;
    b1if = false;
    b2if = false;
    b3if = false;
    b4if = false;
    b5if = false;
    c1if = false;
    c2if = false;
    c3if = false;
    c4if = false;
    c5if = false;
    d1if = false;
    d2if = false;
    d3if = false;
    d4if = false;
    d5if = false;
    e1if = false;
    e2if = false;
    e3if = false;
    e4if = false;
    e5if = false;
    
    a1b.enabled = true;
    a2b.enabled = true;
    a3b.enabled = true;
    a4b.enabled = true;
    a5b.enabled = true;
    b1b.enabled = true;
    b2b.enabled = true;
    b3b.enabled = true;
    b4b.enabled = true;
    b5b.enabled = true;
    c1b.enabled = true;
    c2b.enabled = true;
    c3b.enabled = true;
    c4b.enabled = true;
    c5b.enabled = true;
    d1b.enabled = true;
    d2b.enabled = true;
    d3b.enabled = true;
    d4b.enabled = true;
    d5b.enabled = true;
    e1b.enabled = true;
    e2b.enabled = true;
    e3b.enabled = true;
    e4b.enabled = true;
    e5b.enabled = true;
    
    if (a1tower == true) {
        a1b.enabled = false;
        a1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        a1l.hidden = false;
    }
    if (a2tower == true) {
        a2b.enabled = false;
        a2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        a2l.hidden = false;
    }
    if (a3tower == true) {
        a3b.enabled = false;
        a3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        a3l.hidden = false;
    }
    if (a4tower == true) {
        a4b.enabled = false;
        a4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        a4l.hidden = false;
    }
    if (a5tower == true) {
        a5b.enabled = false;
        a5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        a5l.hidden = false;
    }
    if (b1tower == true) {
        b1b.enabled = false;
        b1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        b1l.hidden = false;
    }
    if (b2tower == true) {
        b2b.enabled = false;
        b2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        b2l.hidden = false;
    }
    if (b3tower == true) {
        b3b.enabled = false;
        b3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        b3l.hidden = false;
    }
    if (b4tower == true) {
        b4b.enabled = false;
        b4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        b4l.hidden = false;
    }
    if (b5tower == true) {
        b5b.enabled = false;
        b5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        b5l.hidden = false;
    }
    if (c1tower == true) {
        c1b.enabled = false;
        c1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        c1l.hidden = false;
    }
    if (c2tower == true) {
        c2b.enabled = false;
        c2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        c2l.hidden = false;
    }
    if (c3tower == true) {
        c3b.enabled = false;
        c3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        c3l.hidden = false;
    }
    if (c4tower == true) {
        c4b.enabled = false;
        c4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        c4l.hidden = false;
    }
    if (c5tower == true) {
        c5b.enabled = false;
        c5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        c5l.hidden = false;
    }
    if (d1tower == true) {
        d1b.enabled = false;
        d1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        d1l.hidden = false;
    }
    if (d2tower == true) {
        d2b.enabled = false;
        d2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        d2l.hidden = false;
    }
    if (d3tower == true) {
        d3b.enabled = false;
        d3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        d3l.hidden = false;
    }
    if (d4tower == true) {
        d4b.enabled = false;
        d4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        d4l.hidden = false;
    }
    if (d5tower == true) {
        d5b.enabled = false;
        d5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        d5l.hidden = false;
    }
    if (e1tower == true) {
        e1b.enabled = false;
        e1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        e1l.hidden = false;
    }
    if (e2tower == true) {
        e2b.enabled = false;
        e2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        e2l.hidden = false;
    }
    if (e3tower == true) {
        e3b.enabled = false;
        e3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        e3l.hidden = false;
    }
    if (e4tower == true) {
        e4b.enabled = false;
        e4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        e4l.hidden = false;
    }
    if (e5tower == true) {
        e5b.enabled = false;
        e5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
        e5l.hidden = false;
    }
    
    if (a1n == 0) {
        a1b.enabled = false;
        a1l.hidden = true;
    }
    if (a2n == 0) {
        a2b.enabled = false;
        a2l.hidden = true;
    }
    if (a3n == 0) {
        a3b.enabled = false;
        a3l.hidden = true;
    }
    if (a4n == 0) {
        a4b.enabled = false;
        a4l.hidden = true;
    }
    if (a5n == 0) {
        a5b.enabled = false;
        a5l.hidden = true;
    }
    if (b1n == 0) {
        b1b.enabled = false;
        b1l.hidden = true;
    }
    if (b2n == 0) {
        b2b.enabled = false;
        b2l.hidden = true;
    }
    if (b3n == 0) {
        b3b.enabled = false;
        b3l.hidden = true;
    }
    if (b4n == 0) {
        b4b.enabled = false;
        b4l.hidden = true;
    }
    if (b5n == 0) {
        b5b.enabled = false;
        b5l.hidden = true;
    }
    if (c1n == 0) {
        c1b.enabled = false;
        c1l.hidden = true;
    }
    if (c2n == 0) {
        c2b.enabled = false;
        c2l.hidden = true;
    }
    if (c3n == 0) {
        c3b.enabled = false;
        c3l.hidden = true;
    }
    if (c4n == 0) {
        c4b.enabled = false;
        c4l.hidden = true;
    }
    if (c5n == 0) {
        c5b.enabled = false;
        c5l.hidden = true;
    }
    if (d1n == 0) {
        d1b.enabled = false;
        d1l.hidden = true;
    }
    if (d2n == 0) {
        d2b.enabled = false;
        d2l.hidden = true;
    }
    if (d3n == 0) {
        d3b.enabled = false;
        d3l.hidden = true;
    }
    if (d4n == 0) {
        d4b.enabled = false;
        d4l.hidden = true;
    }
    if (d5n == 0) {
        d5b.enabled = false;
        d5l.hidden = true;
    }
    if (e1n == 0) {
        e1b.enabled = false;
        e1l.hidden = true;
    }
    if (e2n == 0) {
        e2b.enabled = false;
        e2l.hidden = true;
    }
    if (e3n == 0) {
        e3b.enabled = false;
        e3l.hidden = true;
    }
    if (e4n == 0) {
        e4b.enabled = false;
        e4l.hidden = true;
    }
    if (e5n == 0) {
        e5b.enabled = false;
        e5l.hidden = true;
    }
    
    if (a1n < 0) {
        a1b.enabled = false;
    }
    if (a2n < 0) {
        a2b.enabled = false;
    }
    if (a3n < 0) {
        a3b.enabled = false;
    }
    if (a4n < 0) {
        a4b.enabled = false;
    }
    if (a5n < 0) {
        a5b.enabled = false;
    }
    if (b1n < 0) {
        b1b.enabled = false;
    }
    if (b2n < 0) {
        b2b.enabled = false;
    }
    if (b3n < 0) {
        b3b.enabled = false;
    }
    if (b4n < 0) {
        b4b.enabled = false;
    }
    if (b5n < 0) {
        b5b.enabled = false;
    }
    if (c1n < 0) {
        c1b.enabled = false;
    }
    if (c2n < 0) {
        c2b.enabled = false;
    }
    if (c3n < 0) {
        c3b.enabled = false;
    }
    if (c4n < 0) {
        c4b.enabled = false;
    }
    if (c5n < 0) {
        c5b.enabled = false;
    }
    if (d1n < 0) {
        d1b.enabled = false;
    }
    if (d2n < 0) {
        d2b.enabled = false;
    }
    if (d3n < 0) {
        d3b.enabled = false;
    }
    if (d4n < 0) {
        d4b.enabled = false;
    }
    if (d5n < 0) {
        d5b.enabled = false;
    }
    if (e1n < 0) {
        e1b.enabled = false;
    }
    if (e2n < 0) {
        e2b.enabled = false;
    }
    if (e3n < 0) {
        e3b.enabled = false;
    }
    if (e4n < 0) {
        e4b.enabled = false;
    }
    if (e5n < 0) {
        e5b.enabled = false;
    }
    
    if (a1n != 0 && a1n > 0 && a1tower == false) {
        a1b.enabled = true;
        a1l.hidden = false;
    }
    if (a2n != 0 && a2n > 0 && a2tower == false) {
        a2b.enabled = true;
        a2l.hidden = false;
    }
    if (a3n != 0 && a3n > 0 && a3tower == false) {
        a3b.enabled = true;
        a3l.hidden = false;
    }
    if (a4n != 0 && a4n > 0 && a4tower == false) {
        a4b.enabled = true;
        a4l.hidden = false;
    }
    if (a5n != 0 && a5n > 0 && a5tower == false) {
        a5b.enabled = true;
        a5l.hidden = false;
    }
    if (b1n != 0 && b1n > 0 && b1tower == false) {
        b1b.enabled = true;
        b1l.hidden = false;
    }
    if (b2n != 0 && b2n > 0 && b2tower == false) {
        b2b.enabled = true;
        b2l.hidden = false;
    }
    if (b3n != 0 && b3n > 0 && b3tower == false) {
        b3b.enabled = true;
        b3l.hidden = false;
    }
    if (b4n != 0 && b4n > 0 && b4tower == false) {
        b4b.enabled = true;
        b4l.hidden = false;
    }
    if (b5n != 0 && b5n > 0 && b5tower == false) {
        b5b.enabled = true;
        b5l.hidden = false;
    }
    if (c1n != 0 && c1n > 0 && c1tower == false) {
        c1b.enabled = true;
        c1l.hidden = false;
    }
    if (c2n != 0 && c2n > 0 && c2tower == false) {
        c2b.enabled = true;
        c2l.hidden = false;
    }
    if (c3n != 0 && c3n > 0 && c3tower == false) {
        c3b.enabled = true;
        c3l.hidden = false;
    }
    if (c4n != 0 && c4n > 0 && c4tower == false) {
        c4b.enabled = true;
        c4l.hidden = false;
    }
    if (c5n != 0 && c5n > 0 && c5tower == false) {
        c5b.enabled = true;
        c5l.hidden = false;
    }
    if (d1n != 0 && d1n > 0 && d1tower == false) {
        d1b.enabled = true;
        d1l.hidden = false;
    }
    if (d2n != 0 && d2n > 0 && d2tower == false) {
        d2b.enabled = true;
        d2l.hidden = false;
    }
    if (d3n != 0 && d3n > 0 && d3tower == false) {
        d3b.enabled = true;
        d3l.hidden = false;
    }
    if (d4n != 0 && d4n > 0 && d4tower == false) {
        d4b.enabled = true;
        d4l.hidden = false;
    }
    if (d5n != 0 && d5n > 0 && d5tower == false) {
        d5b.enabled = true;
        d5l.hidden = false;
    }
    if (e1n != 0 && e1n > 0 && e1tower == false) {
        e1b.enabled = true;
        e1l.hidden = false;
    }
    if (e2n != 0 && e2n > 0 && e2tower == false) {
        e2b.enabled = true;
        e2l.hidden = false;
    }
    if (e3n != 0 && e3n > 0 && e3tower == false) {
        e3b.enabled = true;
        e3l.hidden = false;
    }
    if (e4n != 0 && e4n > 0 && e4tower == false) {
        e4b.enabled = true;
        e4l.hidden = false;
    }
    if (e5n != 0 && e5n > 0 && e5tower == false) {
        e5b.enabled = true;
        e5l.hidden = false;
    }
    
    [a1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [a2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [a3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [a4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [a5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    
    if (a1tower == false) {
        a1l.textColor = [UIColor whiteColor];
    }
    if (a2tower == false) {
        a2l.textColor = [UIColor whiteColor];
    }    
    if (a3tower == false) {
        a3l.textColor = [UIColor whiteColor];
    }
    if (a4tower == false) {
        a4l.textColor = [UIColor whiteColor];
    }
    if (a5tower == false) {
        a5l.textColor = [UIColor whiteColor];
    }
    if (b1tower == false) {
        b1l.textColor = [UIColor whiteColor];
    }
    if (b2tower == false) {
        b2l.textColor = [UIColor whiteColor];
    }    
    if (b3tower == false) {
        b3l.textColor = [UIColor whiteColor];
    }
    if (b4tower == false) {
        b4l.textColor = [UIColor whiteColor];
    }
    if (b5tower == false) {
        b5l.textColor = [UIColor whiteColor];
    }
    if (c1tower == false) {
        c1l.textColor = [UIColor whiteColor];
    }
    if (c2tower == false) {
        c2l.textColor = [UIColor whiteColor];
    }    
    if (c3tower == false) {
        c3l.textColor = [UIColor whiteColor];
    }
    if (c4tower == false) {
        c4l.textColor = [UIColor whiteColor];
    }
    if (c5tower == false) {
        c5l.textColor = [UIColor whiteColor];
    }
    if (d1tower == false) {
        d1l.textColor = [UIColor whiteColor];
    }
    if (d2tower == false) {
        d2l.textColor = [UIColor whiteColor];
    }    
    if (d3tower == false) {
        d3l.textColor = [UIColor whiteColor];
    }
    if (d4tower == false) {
        d4l.textColor = [UIColor whiteColor];
    }
    if (d5tower == false) {
        d5l.textColor = [UIColor whiteColor];
    }
    if (e1tower == false) {
        e1l.textColor = [UIColor whiteColor];
    }
    if (e2tower == false) {
        e2l.textColor = [UIColor whiteColor];
    }    
    if (e3tower == false) {
        e3l.textColor = [UIColor whiteColor];
    }
    if (e4tower == false) {
        e4l.textColor = [UIColor whiteColor];
    }
    if (e5tower == false) {
        e5l.textColor = [UIColor whiteColor];
    }
    
    [self disableWalls];
    
    if (towers <= 0) {
        [self winLevel];
    }
    
    if (interface >= 0) {
        restartButton.hidden = false;
        restartButton.enabled = true;
        cancelButton.hidden = true;
        cancelButton.enabled = false;
        
        buttonLabel2.text = [NSString stringWithFormat:@"Restart"];
    }
}

-(void)disableWalls {
    //walls testing
    if (a1wall == true) {
        a1n = 0;
        a1b.enabled = false;
        //a1l.textColor = [UIColor grayColor];
        a1i.hidden = true;
        a1l.hidden = true;
    }
    if (a2wall == true) {
        a2n = 0;
        a2b.enabled = false;
        //a2l.textColor = [UIColor grayColor];
        a2i.hidden = true;
        a2l.hidden = true;
    }
    if (a3wall == true) {
        a3n = 0;
        a3b.enabled = false;
        //a3l.textColor = [UIColor grayColor];
        a3i.hidden = true;
        a3l.hidden = true;
    }
    if (a4wall == true) {
        a4n = 0;
        a4b.enabled = false;
        //a4l.textColor = [UIColor grayColor];
        a4i.hidden = true;
        a4l.hidden = true;
    }
    if (a5wall == true) {
        a5n = 0;
        a5b.enabled = false;
        //a5l.textColor = [UIColor grayColor];
        a5i.hidden = true;
        a5l.hidden = true;
    }
    if (b1wall == true) {
        b1n = 0;
        b1b.enabled = false;
        //b1l.textColor = [UIColor grayColor];
        b1i.hidden = true;
        b1l.hidden = true;
    }
    if (b2wall == true) {
        b2n = 0;
        b2b.enabled = false;
        //b2l.textColor = [UIColor grayColor];
        b2i.hidden = true;
        b2l.hidden = true;
    }
    if (b3wall == true) {
        b3n = 0;
        b3b.enabled = false;
        //b3l.textColor = [UIColor grayColor];
        b3i.hidden = true;
        b3l.hidden = true;
    }
    if (b4wall == true) {
        b4n = 0;
        b4b.enabled = false;
        //b4l.textColor = [UIColor grayColor];
        b4i.hidden = true;
        b4l.hidden = true;
    }
    if (b5wall == true) {
        b5n = 0;
        b5b.enabled = false;
        //b5l.textColor = [UIColor grayColor];
        b5i.hidden = true;
        b5l.hidden = true;
    }
    if (c1wall == true) {
        c1n = 0;
        c1b.enabled = false;
        //c1l.textColor = [UIColor grayColor];
        c1i.hidden = true;
        c1l.hidden = true;
    }
    if (c2wall == true) {
        c2n = 0;
        c2b.enabled = false;
        //c2l.textColor = [UIColor grayColor];
        c2i.hidden = true;
        c2l.hidden = true;
    }
    if (c3wall == true) {
        c3n = 0;
        c3b.enabled = false;
        //c3l.textColor = [UIColor grayColor];
        c3i.hidden = true;
        c3l.hidden = true;
    }
    if (c4wall == true) {
        c4n = 0;
        c4b.enabled = false;
        //c4l.textColor = [UIColor grayColor];
        c4i.hidden = true;
        c4l.hidden = true;
    }
    if (c5wall == true) {
        c5n = 0;
        c5b.enabled = false;
        //c5l.textColor = [UIColor grayColor];
        c5i.hidden = true;
        c5l.hidden = true;
    }
    if (d1wall == true) {
        d1n = 0;
        d1b.enabled = false;
        //d1l.textColor = [UIColor grayColor];
        d1i.hidden = true;
        d1l.hidden = true;
    }
    if (d2wall == true) {
        d2n = 0;
        d2b.enabled = false;
        //d2l.textColor = [UIColor grayColor];
        d2i.hidden = true;
        d2l.hidden = true;
    }
    if (d3wall == true) {
        d3n = 0;
        d3b.enabled = false;
        //d3l.textColor = [UIColor grayColor];
        d3i.hidden = true;
        d3l.hidden = true;
    }
    if (d4wall == true) {
        d4n = 0;
        d4b.enabled = false;
        //d4l.textColor = [UIColor grayColor];
        d4i.hidden = true;
        d4l.hidden = true;
    }
    if (d5wall == true) {
        d5n = 0;
        d5b.enabled = false;
        //d5l.textColor = [UIColor grayColor];
        d5i.hidden = true;
        d5l.hidden = true;
    }
    if (e1wall == true) {
        e1n = 0;
        e1b.enabled = false;
        //e1l.textColor = [UIColor grayColor];
        e1i.hidden = true;
        e1l.hidden = true;
    }
    if (e2wall == true) {
        e2n = 0;
        e2b.enabled = false;
        //e2l.textColor = [UIColor grayColor];
        e2i.hidden = true;
        e2l.hidden = true;
    }
    if (e3wall == true) {
        e3n = 0;
        e3b.enabled = false;
        //e3l.textColor = [UIColor grayColor];
        e3i.hidden = true;
        e3l.hidden = true;
    }
    if (e4wall == true) {
        e4n = 0;
        e4b.enabled = false;
        //e4l.textColor = [UIColor grayColor];
        e4i.hidden = true;
        e4l.hidden = true;
    }
    if (e5wall == true) {
        e5n = 0;
        e5b.enabled = false;
        //e5l.textColor = [UIColor grayColor];
        e5i.hidden = true;
        e5l.hidden = true;
    }
}

-(void)startJiggle {
    /*
    [a1j startJiggle];
    [a2j startJiggle];
    [a3j startJiggle];
    [a4j startJiggle];
    [a5j startJiggle];
    [b1j startJiggle];
    [b2j startJiggle];
    [b3j startJiggle];
    [b4j startJiggle];
    [b5j startJiggle];
    [c1j startJiggle];
    [c2j startJiggle];
    [c3j startJiggle];
    [c4j startJiggle];
    [c5j startJiggle];
    [d1j startJiggle];
    [d2j startJiggle];
    [d3j startJiggle];
    [d4j startJiggle];
    [d5j startJiggle];
    [e1j startJiggle];
    [e2j startJiggle];
    [e3j startJiggle];
    [e4j startJiggle];
    [e5j startJiggle];
    */
}

-(void)stopJiggle {
    /*
    [a1j stopJiggle];
    [a2j stopJiggle];
    [a3j stopJiggle];
    [a4j stopJiggle];
    [a5j stopJiggle];
    [b1j stopJiggle];
    [b2j stopJiggle];
    [b3j stopJiggle];
    [b4j stopJiggle];
    [b5j stopJiggle];
    [c1j stopJiggle];
    [c2j stopJiggle];
    [c3j stopJiggle];
    [c4j stopJiggle];
    [c5j stopJiggle];
    [d1j stopJiggle];
    [d2j stopJiggle];
    [d3j stopJiggle];
    [d4j stopJiggle];
    [d5j stopJiggle];
    [e1j stopJiggle];
    [e2j stopJiggle];
    [e3j stopJiggle];
    [e4j stopJiggle];
    [e5j stopJiggle];
    */
}

-(IBAction) a1a {
    [self prepareForSelection];
    a1if = true;
    [a1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a2n < a1n && a2wall == false) {
        a2b.enabled = true;
        [a2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b1n < a1n && b1wall == false) {
        b1b.enabled = true;
        [b1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b2n < a1n && b2wall == false) {
        b2b.enabled = true;
        [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (a2if == true) {
        a1n = a1n + a2n;
        a2n = 0;
        a1l.text = [NSString stringWithFormat:@"%i", a1n];
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        [self freshGrid];
        if (a1tower == true) {
            a1n = 0;
            a1l.text = [NSString stringWithFormat:@"%i", a1n];
            a1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    
    if (b1if == true) {
        a1n = a1n + b1n;
        b1n = 0;
        a1l.text = [NSString stringWithFormat:@"%i", a1n];
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        [self freshGrid];
        if (a1tower == true) {
            a1n = 0;
            a1l.text = [NSString stringWithFormat:@"%i", a1n];
            a1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    
    if (b2if == true) {
        a1n = a1n + b2n;
        b2n = 0;
        a1l.text = [NSString stringWithFormat:@"%i", a1n];
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        [self freshGrid];
        if (a1tower == true) {
            a1n = 0;
            a1l.text = [NSString stringWithFormat:@"%i", a1n];
            a1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}

-(IBAction) a2a {
    [self prepareForSelection];
    a2if = true;
    [a2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a1n < a2n && a1wall == false) {
        a1b.enabled = true;
        [a1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a3n < a2n && a3wall == false) {
        a3b.enabled = true;
        [a3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b1n < a2n && b1wall == false) {
        b1b.enabled = true;
        [b1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b2n < a2n && b2wall == false) {
        b2b.enabled = true;
        [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b3n < a2n && b3wall == false) {
        b3b.enabled = true;
        [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (a1if == true) {
        a2n = a2n + a1n;
        a1n = 0;
        a1l.text = [NSString stringWithFormat:@"%i", a1n];
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        [self freshGrid];
        if (a2tower == true) {
            a2n = 0;
            a2l.text = [NSString stringWithFormat:@"%i", a2n];
            a2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b1if == true) {
        a2n = a2n + b1n;
        b1n = 0;
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        [self freshGrid];
        if (a2tower == true) {
            a2n = 0;
            a2l.text = [NSString stringWithFormat:@"%i", a2n];
            a2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b2if == true) {
        a2n = a2n + b2n;
        b2n = 0;
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        [self freshGrid];
        if (a2tower == true) {
            a2n = 0;
            a2l.text = [NSString stringWithFormat:@"%i", a2n];
            a2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b3if == true) {
        a2n = a2n + b3n;
        b3n = 0;
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        [self freshGrid];
        if (a2tower == true) {
            a2n = 0;
            a2l.text = [NSString stringWithFormat:@"%i", a2n];
            a2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a3if == true) {
        a2n = a2n + a3n;
        a3n = 0;
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        [self freshGrid];
        if (a2tower == true) {
            a2n = 0;
            a2l.text = [NSString stringWithFormat:@"%i", a2n];
            a2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) a3a {
    [self prepareForSelection];
    a3if = true;
    [a3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a2n < a3n && a2wall == false) {
        a2b.enabled = true;
        [a2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a4n < a3n && a4wall == false) {
        a4b.enabled = true;
        [a4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b2n < a3n && b2wall == false) {
        b2b.enabled = true;
        [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b3n < a3n && b3wall == false) {
        b3b.enabled = true;
        [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b4n < a3n && b4wall == false) {
        b4b.enabled = true;
        [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (a2if == true) {
        a3n = a3n + a2n;
        a2n = 0;
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        [self freshGrid];
        if (a3tower == true) {
            a3n = 0;
            a3l.text = [NSString stringWithFormat:@"%i", a3n];
            a3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    
    if (b2if == true) {
        a3n = a3n + b2n;
        b2n = 0;
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        [self freshGrid];
        if (a3tower == true) {
            a3n = 0;
            a3l.text = [NSString stringWithFormat:@"%i", a3n];
            a3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b3if == true) {
        a3n = a3n + b3n;
        b3n = 0;
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        [self freshGrid];
        if (a3tower == true) {
            a3n = 0;
            a3l.text = [NSString stringWithFormat:@"%i", a3n];
            a3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a4if == true) {
        a3n = a3n + a4n;
        a4n = 0;
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        [self freshGrid];
        if (a3tower == true) {
            a3n = 0;
            a3l.text = [NSString stringWithFormat:@"%i", a3n];
            a3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b4if == true) {
        a3n = a3n + b4n;
        b4n = 0;
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        [self freshGrid];
        if (a3tower == true) {
            a3n = 0;
            a3l.text = [NSString stringWithFormat:@"%i", a3n];
            a3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) a4a {
    [self prepareForSelection];
    a4if = true;
    [a4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a3n < a4n && a3wall == false) {
        a3b.enabled = true;
        [a3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a5n < a4n && a5wall == false) {
        a5b.enabled = true;
        [a5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b3n < a4n && b3wall == false) {
        b3b.enabled = true;
        [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b4n < a4n && b4wall == false) {
        b4b.enabled = true;
        [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b5n < a4n && b5wall == false) {
        b5b.enabled = true;
        [b5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (b3if == true) {
        a4n = a4n + b3n;
        b3n = 0;
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        [self freshGrid];
        if (a4tower == true) {
            a4n = 0;
            a4l.text = [NSString stringWithFormat:@"%i", a4n];
            a4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a3if == true) {
        a4n = a4n + a3n;
        a3n = 0;
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        [self freshGrid];
        if (a4tower == true) {
            a4n = 0;
            a4l.text = [NSString stringWithFormat:@"%i", a4n];
            a4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b4if == true) {
        a4n = a4n + b4n;
        b4n = 0;
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        [self freshGrid];
        if (a4tower == true) {
            a4n = 0;
            a4l.text = [NSString stringWithFormat:@"%i", a4n];
            a4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a5if == true) {
        a4n = a4n + a5n;
        a5n = 0;
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        a5l.text = [NSString stringWithFormat:@"%i", a5n];
        [self freshGrid];
        if (a4tower == true) {
            a4n = 0;
            a4l.text = [NSString stringWithFormat:@"%i", a4n];
            a4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b5if == true) {
        a4n = a4n + b5n;
        b5n = 0;
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        [self freshGrid];
        if (a4tower == true) {
            a4n = 0;
            a4l.text = [NSString stringWithFormat:@"%i", a4n];
            a4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) a5a {
    [self prepareForSelection];
    a5if = true;
    [a5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a4n < a5n && a4wall == false) {
        a4b.enabled = true;
        [a4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b4n < a5n && b4wall == false) {
        b4b.enabled = true;
        [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b5n <a5n && b5wall == false) {
        b5b.enabled = true;
        [b5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a4if == true) {
        a5n = a5n + a4n;
        a4n = 0;
        a5l.text = [NSString stringWithFormat:@"%i", a5n];
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        [self freshGrid];
        if (a5tower == true) {
            a5n = 0;
            a5l.text = [NSString stringWithFormat:@"%i", a5n];
            a5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b4if == true) {
        a5n = a5n + b4n;
        b4n = 0;
        a5l.text = [NSString stringWithFormat:@"%i", a5n];
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        [self freshGrid];
        if (a5tower == true) {
            a5n = 0;
            a5l.text = [NSString stringWithFormat:@"%i", a5n];
            a5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b5if == true) {
        a5n = a5n + b5n;
        b5n = 0;
        a5l.text = [NSString stringWithFormat:@"%i", a5n];
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        [self freshGrid];
        if (a5tower == true) {
            a5n = 0;
            a5l.text = [NSString stringWithFormat:@"%i", a5n];
            a5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) b1a {
    [self prepareForSelection];
    b1if = true;
    [b1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a1n < b1n && a1wall == false) {
        a1b.enabled = true;
        [a1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a2n < b1n && a2wall == false) {
        a2b.enabled = true;
        [a2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b2n < b1n && b2wall == false) {
        b2b.enabled = true;
        [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c1n < b1n && c1wall == false) {
        c1b.enabled = true;
        [c1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c2n < b1n && c2wall == false) {
        c2b.enabled = true;
        [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (a1if == true) {
        b1n = b1n + a1n;
        a1n = 0;
        a1l.text = [NSString stringWithFormat:@"%i", a1n];
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        [self freshGrid];
        if (b1tower == true) {
            b1n = 0;
            b1l.text = [NSString stringWithFormat:@"%i", b1n];
            b1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a2if == true) {
        b1n = b1n + a2n;
        a2n = 0;
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        [self freshGrid];
        if (b1tower == true) {
            b1n = 0;
            b1l.text = [NSString stringWithFormat:@"%i", b1n];
            b1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b2if == true) {
        b1n = b1n + b2n;
        b2n = 0;
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        [self freshGrid];
        if (b1tower == true) {
            b1n = 0;
            b1l.text = [NSString stringWithFormat:@"%i", b1n];
            b1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c2if == true) {
        b1n = b1n + c2n;
        c2n = 0;
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        [self freshGrid];
        if (b1tower == true) {
            b1n = 0;
            b1l.text = [NSString stringWithFormat:@"%i", b1n];
            b1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c1if == true) {
        b1n = b1n + c1n;
        c1n = 0;
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        [self freshGrid];
        if (b1tower == true) {
            b1n = 0;
            b1l.text = [NSString stringWithFormat:@"%i", b1n];
            b1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}

-(IBAction) b2a {
    [self prepareForSelection];
    b2if = true;
    [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a1n < b2n && a1wall == false) {
        a1b.enabled = true;
        [a1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a2n < b2n && a2wall == false) {
        a2b.enabled = true;
        [a2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a3n < b2n && a3wall == false) {
        a3b.enabled = true;
        [a3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b1n < b2n && b1wall == false) {
        b1b.enabled = true;
        [b1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b3n < b2n && b3wall == false) {
        b3b.enabled = true;
        [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c1n < b2n && c1wall == false) {
        c1b.enabled = true;
        [c1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c2n < b2n && c2wall == false) {
        c2b.enabled = true;
        [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c3n < b2n && c3wall == false) {
        c3b.enabled = true;
        [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (a1if == true) {
        b2n = b2n + a1n;
        a1n = 0;
        a1l.text = [NSString stringWithFormat:@"%i", a1n];
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        [self freshGrid];
        if (b2tower == true) {
            b2n = 0;
            b2l.text = [NSString stringWithFormat:@"%i", b2n];
            b2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a2if == true) {
        b2n = b2n + a2n;
        a2n = 0;
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        [self freshGrid];
        if (b2tower == true) {
            b2n = 0;
            b2l.text = [NSString stringWithFormat:@"%i", b2n];
            b2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b1if == true) {
        b2n = b2n + b1n;
        b1n = 0;
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        [self freshGrid];
        if (b2tower == true) {
            b2n = 0;
            b2l.text = [NSString stringWithFormat:@"%i", b2n];
            b2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b3if == true) {
        b2n = b2n + b3n;
        b3n = 0;
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        [self freshGrid];
        if (b2tower == true) {
            b2n = 0;
            b2l.text = [NSString stringWithFormat:@"%i", b2n];
            b2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a3if == true) {
        b2n = b2n + a3n;
        a3n = 0;
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        [self freshGrid];
        if (b2tower == true) {
            b2n = 0;
            b2l.text = [NSString stringWithFormat:@"%i", b2n];
            b2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c3if == true) {
        b2n = b2n + c3n;
        c3n = 0;
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        [self freshGrid];
        if (b2tower == true) {
            b2n = 0;
            b2l.text = [NSString stringWithFormat:@"%i", b2n];
            b2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c2if == true) {
        b2n = b2n + c2n;
        c2n = 0;
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        [self freshGrid];
        if (b2tower == true) {
            b2n = 0;
            b2l.text = [NSString stringWithFormat:@"%i", b2n];
            b2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c1if == true) {
        b2n = b2n + c1n;
        c1n = 0;
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        [self freshGrid];
        if (b2tower == true) {
            b2n = 0;
            b2l.text = [NSString stringWithFormat:@"%i", b2n];
            b2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) b3a {
    [self prepareForSelection];
    b3if = true;
    [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a2n < b3n && a2wall == false) {
        a2b.enabled = true;
        [a2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a3n < b3n && a3wall == false) {
        a3b.enabled = true;
        [a3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a4n < b3n && a4wall == false) {
        a4b.enabled = true;
        [a4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b2n < b3n && b2wall == false) {
        b2b.enabled = true;
        [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b4n < b3n && b4wall == false) {
        b4b.enabled = true;
        [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c2n < b3n && c2wall == false) {
        c2b.enabled = true;
        [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c3n < b3n && c3wall == false) {
        c3b.enabled = true;
        [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c4n < b3n && c4wall == false) {
        c4b.enabled = true;
        [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a2if == true) {
        b3n = b3n + a2n;
        a2n = 0;
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        a2l.text = [NSString stringWithFormat:@"%i", a2n];
        [self freshGrid];
        if (b3tower == true) {
            b3n = 0;
            b3l.text = [NSString stringWithFormat:@"%i", b3n];
            b3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b2if == true) {
        b3n = b3n + b2n;
        b2n = 0;
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        [self freshGrid];
        if (b3tower == true) {
            b3n = 0;
            b3l.text = [NSString stringWithFormat:@"%i", b3n];
            b3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a3if == true) {
        b3n = b3n + a3n;
        a3n = 0;
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        [self freshGrid];
        if (b3tower == true) {
            b3n = 0;
            b3l.text = [NSString stringWithFormat:@"%i", b3n];
            b3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c3if == true) {
        b3n = b3n + c3n;
        c3n = 0;
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        [self freshGrid];
        if (b3tower == true) {
            b3n = 0;
            b3l.text = [NSString stringWithFormat:@"%i", b3n];
            b3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c2if == true) {
        b3n = b3n + c2n;
        c2n = 0;
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        [self freshGrid];
        if (b3tower == true) {
            b3n = 0;
            b3l.text = [NSString stringWithFormat:@"%i", b3n];
            b3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a4if == true) {
        b3n = b3n + a4n;
        a4n = 0;
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        [self freshGrid];
        if (b3tower == true) {
            b3n = 0;
            b3l.text = [NSString stringWithFormat:@"%i", b3n];
            b3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b4if == true) {
        b3n = b3n + b4n;
        b4n = 0;
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        [self freshGrid];
        if (b3tower == true) {
            b3n = 0;
            b3l.text = [NSString stringWithFormat:@"%i", b3n];
            b3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c4if == true) {
        b3n = b3n + c4n;
        c4n = 0;
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        [self freshGrid];
        if (b3tower == true) {
            b3n = 0;
            b3l.text = [NSString stringWithFormat:@"%i", b3n];
            b3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) b4a {
    [self prepareForSelection];
    b4if = true;
    [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a3n < b4n && a3wall == false) {
        a3b.enabled = true;
        [a3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a4n < b4n && a4wall == false) {
        a4b.enabled = true;
        [a4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a5n < b4n && a5wall == false) {
        a5b.enabled = true;
        [a5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b3n < b4n && b3wall == false) {
        b3b.enabled = true;
        [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b5n < b4n && b5wall == false) {
        b5b.enabled = true;
        [b5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c3n < b4n && c3wall == false) {
        c3b.enabled = true;
        [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c4n < b4n && c4wall == false) {
        c4b.enabled = true;
        [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c5n < b4n && c5wall == false) {
        c5b.enabled = true;
        [c5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (b3if == true) {
        b4n = b4n + b3n;
        b3n = 0;
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        [self freshGrid];
        if (b4tower == true) {
            b4n = 0;
            b4l.text = [NSString stringWithFormat:@"%i", b4n];
            b4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a3if == true) {
        b4n = b4n + a3n;
        a3n = 0;
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        a3l.text = [NSString stringWithFormat:@"%i", a3n];
        [self freshGrid];
        if (b4tower == true) {
            b4n = 0;
            b4l.text = [NSString stringWithFormat:@"%i", b4n];
            b4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c3if == true) {
        b4n = b4n + c3n;
        c3n = 0;
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        [self freshGrid];
        if (b4tower == true) {
            b4n = 0;
            b4l.text = [NSString stringWithFormat:@"%i", b4n];
            b4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a4if == true) {
        b4n = b4n + a4n;
        a4n = 0;
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        [self freshGrid];
        if (b4tower == true) {
            b4n = 0;
            b4l.text = [NSString stringWithFormat:@"%i", b4n];
            b4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c4if == true) {
        b4n = b4n + c4n;
        c4n = 0;
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        [self freshGrid];
        if (b4tower == true) {
            b4n = 0;
            b4l.text = [NSString stringWithFormat:@"%i", b4n];
            b4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a5if == true) {
        b4n = b4n + a5n;
        a5n = 0;
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        a5l.text = [NSString stringWithFormat:@"%i", a5n];
        [self freshGrid];
        if (b4tower == true) {
            b4n = 0;
            b4l.text = [NSString stringWithFormat:@"%i", b4n];
            b4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b5if == true) {
        b4n = b4n + b5n;
        b5n = 0;
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        [self freshGrid];
        if (b4tower == true) {
            b4n = 0;
            b4l.text = [NSString stringWithFormat:@"%i", b4n];
            b4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c5if == true) {
        b4n = b4n + c5n;
        c5n = 0;
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        [self freshGrid];
        if (b4tower == true) {
            b4n = 0;
            b4l.text = [NSString stringWithFormat:@"%i", b4n];
            b4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) b5a {
    [self prepareForSelection];
    b5if = true;
    [b5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (a4n < b5n && a4wall == false) {
        a4b.enabled = true;
        [a4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a5n < b5n && a5wall == false) {
        a5b.enabled = true;
        [a5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b4n < b5n && b4wall == false) {
        b4b.enabled = true;
        [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c4n < b5n && c4wall == false) {
        c4b.enabled = true;
        [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c5n < b5n && c5wall == false) {
        c5b.enabled = true;
        [c5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (a4if == true) {
        b5n = b5n + a4n;
        a4n = 0;
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        a4l.text = [NSString stringWithFormat:@"%i", a4n];
        [self freshGrid];
        if (b5tower == true) {
            b5n = 0;
            b5l.text = [NSString stringWithFormat:@"%i", b5n];
            b5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b4if == true) {
        b5n = b5n + b4n;
        b4n = 0;
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        [self freshGrid];
        if (b5tower == true) {
            b5n = 0;
            b5l.text = [NSString stringWithFormat:@"%i", b5n];
            b5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c4if == true) {
        b5n = b5n + c4n;
        c4n = 0;
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        [self freshGrid];
        if (b5tower == true) {
            b5n = 0;
            b5l.text = [NSString stringWithFormat:@"%i", b5n];
            b5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (a5if == true) {
        b5n = b5n + a5n;
        a5n = 0;
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        a5l.text = [NSString stringWithFormat:@"%i", a5n];
        [self freshGrid];
        if (b5tower == true) {
            b5n = 0;
            b5l.text = [NSString stringWithFormat:@"%i", b5n];
            b5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c5if == true) {
        b5n = b5n + c5n;
        c5n = 0;
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        [self freshGrid];
        if (b5tower == true) {
            b5n = 0;
            b5l.text = [NSString stringWithFormat:@"%i", b5n];
            b5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c5if == true) {
        b5n = b5n + c5n;
        c5n = 0;
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        [self freshGrid];
        if (b5tower == true) {
            b5n = 0;
            b5l.text = [NSString stringWithFormat:@"%i", b5n];
            b5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) c1a {
    [self prepareForSelection];
    c1if = true;
    [c1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (b1n < c1n && b1wall == false) {
        b1b.enabled = true;
        [b1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b2n < c1n && b2wall == false) {
        b2b.enabled = true;
        [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c2n < c1n && c2wall == false) {
        c2b.enabled = true;
        [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d1n < c1n && d1wall == false) {
        d1b.enabled = true;
        [d1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d2n < c1n && d2wall == false) {
        d2b.enabled = true;
        [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b1if == true) {
        c1n = c1n + b1n;
        b1n = 0;
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        [self freshGrid];
        if (c1tower == true) {
            c1n = 0;
            c1l.text = [NSString stringWithFormat:@"%i", c1n];
            c1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b2if == true) {
        c1n = c1n + b2n;
        b2n = 0;
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        [self freshGrid];
        if (c1tower == true) {
            c1n = 0;
            c1l.text = [NSString stringWithFormat:@"%i", c1n];
            c1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c2if == true) {
        c1n = c1n + c2n;
        c2n = 0;
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        [self freshGrid];
        if (c1tower == true) {
            c1n = 0;
            c1l.text = [NSString stringWithFormat:@"%i", c1n];
            c1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d2if == true) {
        c1n = c1n + d2n;
        d2n = 0;
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        [self freshGrid];
        if (c1tower == true) {
            c1n = 0;
            c1l.text = [NSString stringWithFormat:@"%i", c1n];
            c1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d1if == true) {
        c1n = c1n + d1n;
        d1n = 0;
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        [self freshGrid];
        if (c1tower == true) {
            c1n = 0;
            c1l.text = [NSString stringWithFormat:@"%i", c1n];
            c1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) c2a {
    [self prepareForSelection];
    c2if = true;
    [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (b1n < c2n && b1wall == false) {
        b1b.enabled = true;
        [b1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b2n < c2n && b2wall == false) {
        b2b.enabled = true;
        [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b3n < c2n && b3wall == false) {
        b3b.enabled = true;
        [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c1n < c2n && c1wall == false) {
        c1b.enabled = true;
        [c1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c3n < c2n && c3wall == false) {
        c3b.enabled = true;
        [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d1n < c2n && d1wall == false) {
        d1b.enabled = true;
        [d1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d2n < c2n && d2wall == false) {
        d2b.enabled = true;
        [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d3n < c2n && d3wall == false) {
        d3b.enabled = true;
        [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b1if == true) {
        c2n = c2n + b1n;
        b1n = 0;
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        b1l.text = [NSString stringWithFormat:@"%i", b1n];
        [self freshGrid];
        if (c2tower == true) {
            c2n = 0;
            c2l.text = [NSString stringWithFormat:@"%i", c2n];
            c2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b2if == true) {
        c2n = c2n + b2n;
        b2n = 0;
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        [self freshGrid];
        if (c2tower == true) {
            c2n = 0;
            c2l.text = [NSString stringWithFormat:@"%i", c2n];
            c2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b3if == true) {
        c2n = c2n + b3n;
        b3n = 0;
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        [self freshGrid];
        if (c2tower == true) {
            c2n = 0;
            c2l.text = [NSString stringWithFormat:@"%i", c2n];
            c2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c3if == true) {
        c2n = c2n + c3n;
        c3n = 0;
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        [self freshGrid];
        if (c2tower == true) {
            c2n = 0;
            c2l.text = [NSString stringWithFormat:@"%i", c2n];
            c2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c1if == true) {
        c2n = c2n + c1n;
        c1n = 0;
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        [self freshGrid];
        if (c2tower == true) {
            c2n = 0;
            c2l.text = [NSString stringWithFormat:@"%i", c2n];
            c2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d3if == true) {
        c2n = c2n + d3n;
        d3n = 0;
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        [self freshGrid];
        if (c2tower == true) {
            c2n = 0;
            c2l.text = [NSString stringWithFormat:@"%i", c2n];
            c2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d2if == true) {
        c2n = c2n + d2n;
        d2n = 0;
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        [self freshGrid];
        if (c2tower == true) {
            c2n = 0;
            c2l.text = [NSString stringWithFormat:@"%i", c2n];
            c2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d1if == true) {
        c2n = c2n + d1n;
        d1n = 0;
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        [self freshGrid];
        if (c2tower == true) {
            c2n = 0;
            c2l.text = [NSString stringWithFormat:@"%i", c2n];
            c2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) c3a {
    [self prepareForSelection];
    c3if = true;
    [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (b2n < c3n && b2wall == false) {
        b2b.enabled = true;
        [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b3n < c3n && b3wall == false) {
        b3b.enabled = true;
        [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b4n < c3n && b4wall == false) {
        b4b.enabled = true;
        [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c2n < c3n && c2wall == false) {
        c2b.enabled = true;
        [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c4n < c3n && c4wall == false) {
        c4b.enabled = true;
        [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d2n < c3n && d2wall == false) {
        d2b.enabled = true;
        [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d3n < c3n && d3wall == false) {
        d3b.enabled = true;
        [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4n < c3n && d4wall == false) {
        d4b.enabled = true;
        [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (b2if == true) {
        c3n = c3n + b2n;
        b2n = 0;
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        b2l.text = [NSString stringWithFormat:@"%i", b2n];
        [self freshGrid];
        if (c3tower == true) {
            c3n = 0;
            c3l.text = [NSString stringWithFormat:@"%i", c3n];
            c3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b3if == true) {
        c3n = c3n + b3n;
        b3n = 0;
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        [self freshGrid];
        if (c3tower == true) {
            c3n = 0;
            c3l.text = [NSString stringWithFormat:@"%i", c3n];
            c3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c2if == true) {
        c3n = c3n + c2n;
        c2n = 0;
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        [self freshGrid];
        if (c3tower == true) {
            c3n = 0;
            c3l.text = [NSString stringWithFormat:@"%i", c3n];
            c3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b4if == true) {
        c3n = c3n + b4n;
        b4n = 0;
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        [self freshGrid];
        if (c3tower == true) {
            c3n = 0;
            c3l.text = [NSString stringWithFormat:@"%i", c3n];
            c3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c4if == true) {
        c3n = c3n + c4n;
        c4n = 0;
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        [self freshGrid];
        if (c3tower == true) {
            c3n = 0;
            c3l.text = [NSString stringWithFormat:@"%i", c3n];
            c3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d4if == true) {
        c3n = c3n + d4n;
        d4n = 0;
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        [self freshGrid];
        if (c3tower == true) {
            c3n = 0;
            c3l.text = [NSString stringWithFormat:@"%i", c3n];
            c3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d3if == true) {
        c3n = c3n + d3n;
        d3n = 0;
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        [self freshGrid];
        if (c3tower == true) {
            c3n = 0;
            c3l.text = [NSString stringWithFormat:@"%i", c3n];
            c3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d2if == true) {
        c3n = c3n + d2n;
        d2n = 0;
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        [self freshGrid];
        if (c3tower == true) {
            c3n = 0;
            c3l.text = [NSString stringWithFormat:@"%i", c3n];
            c3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) c4a {
    [self prepareForSelection];
    c4if = true;
    [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (b3n < c4n && b3wall == false) {
        b3b.enabled = true;
        [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b4n < c4n && b4wall == false) {
        b4b.enabled = true;
        [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b5n < c4n && b5wall == false) {
        b5b.enabled = true;
        [b5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c3n < c4n && c3wall == false) {
        c3b.enabled = true;
        [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c5n < c4n && c5wall == false) {
        c5b.enabled = true;
        [c5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d3n < c4n && d3wall == false) {
        d3b.enabled = true;
        [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4n < c4n && d4wall == false) {
        d4b.enabled = true;
        [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d5n < c4n && d5wall == false) {
        d5b.enabled = true;
        [d5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (b3if == true) {
        c4n = c4n + b3n;
        b3n = 0;
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        b3l.text = [NSString stringWithFormat:@"%i", b3n];
        [self freshGrid];
        
        if (c4tower == true) {
            c4n = 0;
            c4l.text = [NSString stringWithFormat:@"%i", c4n];
            c4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c3if == true) {
        c4n = c4n + c3n;
        c3n = 0;
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        [self freshGrid];
        
        if (c4tower == true) {
            c4n = 0;
            c4l.text = [NSString stringWithFormat:@"%i", c4n];
            c4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b4if == true) {
        c4n = c4n + b4n;
        b4n = 0;
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        [self freshGrid];
        
        if (c4tower == true) {
            c4n = 0;
            c4l.text = [NSString stringWithFormat:@"%i", c4n];
            c4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d4if == true) {
        c4n = c4n + d4n;
        d4n = 0;
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        [self freshGrid];
        
        if (c4tower == true) {
            c4n = 0;
            c4l.text = [NSString stringWithFormat:@"%i", c4n];
            c4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d3if == true) {
        c4n = c4n + d3n;
        d3n = 0;
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        [self freshGrid];
        
        if (c4tower == true) {
            c4n = 0;
            c4l.text = [NSString stringWithFormat:@"%i", c4n];
            c4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b5if == true) {
        c4n = c4n + b5n;
        b5n = 0;
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        [self freshGrid];
        
        if (c4tower == true) {
            c4n = 0;
            c4l.text = [NSString stringWithFormat:@"%i", c4n];
            c4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c5if == true) {
        c4n = c4n + c5n;
        c5n = 0;
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        [self freshGrid];
        
        if (c4tower == true) {
            c4n = 0;
            c4l.text = [NSString stringWithFormat:@"%i", c4n];
            c4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d5if == true) {
        c4n = c4n + d5n;
        d5n = 0;
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        [self freshGrid];
        
        if (c4tower == true) {
            c4n = 0;
            c4l.text = [NSString stringWithFormat:@"%i", c4n];
            c4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}

-(IBAction) c5a {
    [self prepareForSelection];
    c5if = true;
    [c5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (b4n < c5n && b4wall == false) {
        b4b.enabled = true;
        [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b5n < c5n && b5wall == false) {
        b5b.enabled = true;
        [b5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c4n < c5n && c4wall == false) {
        c4b.enabled = true;
        [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4n < c5n && d4wall == false) {
        d4b.enabled = true;
        [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d5n < c5n && d5wall == false) {
        d5b.enabled = true;
        [d5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (b4if == true) {
        c5n = c5n + b4n;
        b4n = 0;
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        b4l.text = [NSString stringWithFormat:@"%i", b4n];
        [self freshGrid];
        if (c5tower == true) {
            c5n = 0;
            c5l.text = [NSString stringWithFormat:@"%i", c5n];
            c5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c4if == true) {
        c5n = c5n + c4n;
        c4n = 0;
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        [self freshGrid];
        if (c5tower == true) {
            c5n = 0;
            c5l.text = [NSString stringWithFormat:@"%i", c5n];
            c5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d4if == true) {
        c5n = c5n + d4n;
        d4n = 0;
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        [self freshGrid];
        if (c5tower == true) {
            c5n = 0;
            c5l.text = [NSString stringWithFormat:@"%i", c5n];
            c5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (b5if == true) {
        c5n = c5n + b5n;
        b5n = 0;
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        b5l.text = [NSString stringWithFormat:@"%i", b5n];
        [self freshGrid];
        if (c5tower == true) {
            c5n = 0;
            c5l.text = [NSString stringWithFormat:@"%i", c5n];
            c5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d5if == true) {
        c5n = c5n + d5n;
        d5n = 0;
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        [self freshGrid];
        if (c5tower == true) {
            c5n = 0;
            c5l.text = [NSString stringWithFormat:@"%i", c5n];
            c5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) d1a {
    [self prepareForSelection];
    d1if = true;
    [d1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (c1n < d1n && c1wall == false) {
        c1b.enabled = true;
        [c1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c2n < d1n && c2wall == false) {
        c2b.enabled = true;
        [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d2n < d1n && d2wall == false) {
        d2b.enabled = true;
        [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e1n < d1n && e1wall == false) {
        e1b.enabled = true;
        [e1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e2n < d1n && e2wall == false) {
        e2b.enabled = true;
        [e2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (c2if == true) {
        d1n = d1n + c2n;
        c2n = 0;
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        [self freshGrid];
        if (d1tower == true) {
            d1n = 0;
            d1l.text = [NSString stringWithFormat:@"%i", d1n];
            d1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c1if == true) {
        d1n = d1n + c1n;
        c1n = 0;
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        [self freshGrid];
        if (d1tower == true) {
            d1n = 0;
            d1l.text = [NSString stringWithFormat:@"%i", d1n];
            d1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d2if == true) {
        d1n = d1n + d2n;
        d2n = 0;
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        [self freshGrid];
        if (d1tower == true) {
            d1n = 0;
            d1l.text = [NSString stringWithFormat:@"%i", d1n];
            d1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e2if == true) {
        d1n = d1n + e2n;
        e2n = 0;
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        [self freshGrid];
        if (d1tower == true) {
            d1n = 0;
            d1l.text = [NSString stringWithFormat:@"%i", d1n];
            d1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e1if == true) {
        d1n = d1n + e1n;
        e1n = 0;
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        e1l.text = [NSString stringWithFormat:@"%i", e1n];
        [self freshGrid];
        if (d1tower == true) {
            d1n = 0;
            d1l.text = [NSString stringWithFormat:@"%i", d1n];
            d1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) d2a {
    [self prepareForSelection];
    d2if = true;
    [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (c1n < d2n && c1wall == false) {
        c1b.enabled = true;
        [c1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c2n < d2n && c2wall == false) {
        c2b.enabled = true;
        [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c3n < d2n && c3wall == false) {
        c3b.enabled = true;
        [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d1n < d2n && d1wall == false) {
        d1b.enabled = true;
        [d1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d3n < d2n && d3wall == false) {
        d3b.enabled = true;
        [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e1n < d2n && e1wall == false) {
        e1b.enabled = true;
        [e1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e2n < d2n && e2wall == false) {
        e2b.enabled = true;
        [e2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e3n < d2n && e3wall == false) {
        e3b.enabled = true;
        [e3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (c3if == true) {
        d2n = d2n + c3n;
        c3n = 0;
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        [self freshGrid];
        if (d2tower == true) {
            d2n = 0;
            d2l.text = [NSString stringWithFormat:@"%i", d2n];
            d2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c2if == true) {
        d2n = d2n + c2n;
        c2n = 0;
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        [self freshGrid];
        if (d2tower == true) {
            d2n = 0;
            d2l.text = [NSString stringWithFormat:@"%i", d2n];
            d2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c1if == true) {
        d2n = d2n + c1n;
        c1n = 0;
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        c1l.text = [NSString stringWithFormat:@"%i", c1n];
        [self freshGrid];
        if (d2tower == true) {
            d2n = 0;
            d2l.text = [NSString stringWithFormat:@"%i", d2n];
            d2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d3if == true) {
        d2n = d2n + d3n;
        d3n = 0;
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        [self freshGrid];
        if (d2tower == true) {
            d2n = 0;
            d2l.text = [NSString stringWithFormat:@"%i", d2n];
            d2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d1if == true) {
        d2n = d2n + d1n;
        d1n = 0;
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        [self freshGrid];
        if (d2tower == true) {
            d2n = 0;
            d2l.text = [NSString stringWithFormat:@"%i", d2n];
            d2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e3if == true) {
        d2n = d2n + e3n;
        e3n = 0;
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        [self freshGrid];
        if (d2tower == true) {
            d2n = 0;
            d2l.text = [NSString stringWithFormat:@"%i", d2n];
            d2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e2if == true) {
        d2n = d2n + e2n;
        e2n = 0;
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        [self freshGrid];
        if (d2tower == true) {
            d2n = 0;
            d2l.text = [NSString stringWithFormat:@"%i", d2n];
            d2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e1if == true) {
        d2n = d2n + e1n;
        e1n = 0;
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        e1l.text = [NSString stringWithFormat:@"%i", e1n];
        [self freshGrid];
        if (d2tower == true) {
            d2n = 0;
            d2l.text = [NSString stringWithFormat:@"%i", d2n];
            d2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) d3a {
    [self prepareForSelection];
    d3if = true;
    [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (c2n < d3n && c2wall == false) {
        c2b.enabled = true;
        [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c3n < d3n && c3wall == false) {
        c3b.enabled = true;
        [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c4n < d3n && c4wall == false) {
        c4b.enabled = true;
        [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d2n < d3n && d2wall == false) {
        d2b.enabled = true;
        [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4n < d3n && d4wall == false) {
        d4b.enabled = true;
        [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e2n < d3n && e2wall == false) {
        e2b.enabled = true;
        [e2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e3n < d3n && e3wall == false) {
        e3b.enabled = true;
        [e3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e4n < d3n && e4wall == false) {
        e4b.enabled = true;
        [e4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (c3if == true) {
        d3n = d3n + c3n;
        c3n = 0;
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        [self freshGrid];
        if (d3tower == true) {
            d3n = 0;
            d3l.text = [NSString stringWithFormat:@"%i", d3n];
            d3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c2if == true) {
        d3n = d3n + c2n;
        c2n = 0;
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        c2l.text = [NSString stringWithFormat:@"%i", c2n];
        [self freshGrid];
        if (d3tower == true) {
            d3n = 0;
            d3l.text = [NSString stringWithFormat:@"%i", d3n];
            d3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c4if == true) {
        d3n = d3n + c4n;
        c4n = 0;
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        [self freshGrid];
        if (d3tower == true) {
            d3n = 0;
            d3l.text = [NSString stringWithFormat:@"%i", d3n];
            d3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d4if == true) {
        d3n = d3n + d4n;
        d4n = 0;
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        [self freshGrid];
        if (d3tower == true) {
            d3n = 0;
            d3l.text = [NSString stringWithFormat:@"%i", d3n];
            d3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d2if == true) {
        d3n = d3n + d2n;
        d2n = 0;
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        [self freshGrid];
        if (d3tower == true) {
            d3n = 0;
            d3l.text = [NSString stringWithFormat:@"%i", d3n];
            d3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e4if == true) {
        d3n = d3n + e4n;
        e4n = 0;
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        [self freshGrid];
        if (d3tower == true) {
            d3n = 0;
            d3l.text = [NSString stringWithFormat:@"%i", d3n];
            d3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e3if == true) {
        d3n = d3n + e3n;
        e3n = 0;
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        [self freshGrid];
        if (d3tower == true) {
            d3n = 0;
            d3l.text = [NSString stringWithFormat:@"%i", d3n];
            d3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e2if == true) {
        d3n = d3n + e2n;
        e2n = 0;
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        [self freshGrid];
        if (d3tower == true) {
            d3n = 0;
            d3l.text = [NSString stringWithFormat:@"%i", d3n];
            d3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) d4a {
    [self prepareForSelection];
    d4if = true;
    [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (c3n < d4n && c3wall == false) {
        c3b.enabled = true;
        [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c4n < d4n && c4wall == false) {
        c4b.enabled = true;
        [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c5n < d4n && c5wall == false) {
        c5b.enabled = true;
        [c5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d3n < d4n && d3wall == false) {
        d3b.enabled = true;
        [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d5n < d4n && d5wall == false) {
        d5b.enabled = true;
        [d5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e3n < d4n && e3wall == false) {
        e3b.enabled = true;
        [e3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e4n < d4n && e4wall == false) {
        e4b.enabled = true;
        [e4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e5n < d4n && e5wall == false) {
        e5b.enabled = true;
        [e5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    
    if (c3if == true) {
        d4n = d4n + c3n;
        c3n = 0;
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        c3l.text = [NSString stringWithFormat:@"%i", c3n];
        [self freshGrid];
        if (d4tower == true) {
            d4n = 0;
            d4l.text = [NSString stringWithFormat:@"%i", d4n];
            d4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c4if == true) {
        d4n = d4n + c4n;
        c4n = 0;
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        [self freshGrid];
        if (d4tower == true) {
            d4n = 0;
            d4l.text = [NSString stringWithFormat:@"%i", d4n];
            d4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d3if == true) {
        d4n = d4n + d3n;
        d3n = 0;
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        [self freshGrid];
        if (d4tower == true) {
            d4n = 0;
            d4l.text = [NSString stringWithFormat:@"%i", d4n];
            d4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c5if == true) {
        d4n = d4n + c5n;
        c5n = 0;
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        [self freshGrid];
        if (d4tower == true) {
            d4n = 0;
            d4l.text = [NSString stringWithFormat:@"%i", d4n];
            d4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d5if == true) {
        d4n = d4n + d5n;
        d5n = 0;
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        [self freshGrid];
        if (d4tower == true) {
            d4n = 0;
            d4l.text = [NSString stringWithFormat:@"%i", d4n];
            d4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e5if == true) {
        d4n = d4n + e5n;
        e5n = 0;
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        e5l.text = [NSString stringWithFormat:@"%i", e5n];
        [self freshGrid];
        if (d4tower == true) {
            d4n = 0;
            d4l.text = [NSString stringWithFormat:@"%i", d4n];
            d4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e4if == true) {
        d4n = d4n + e4n;
        e4n = 0;
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        [self freshGrid];
        if (d4tower == true) {
            d4n = 0;
            d4l.text = [NSString stringWithFormat:@"%i", d4n];
            d4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e3if == true) {
        d4n = d4n + e3n;
        e3n = 0;
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        [self freshGrid];
        if (d4tower == true) {
            d4n = 0;
            d4l.text = [NSString stringWithFormat:@"%i", d4n];
            d4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) d5a {
    [self prepareForSelection];
    d5if = true;
    [d5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (c4n < d5n && c4wall == false) {
        c4b.enabled = true;
        [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c5n < d5n && c5wall == false) {
        c5b.enabled = true;
        [c5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4n <d5n && d4wall == false) {
        d4b.enabled = true;
        [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e4n < d5n && e4wall == false) {
        e4b.enabled = true;
        [e4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e5n < d5n && e5wall == false) {
        e5b.enabled = true;
        [e5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (c4if == true) {
        d5n = d5n + c4n;
        c4n = 0;
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        c4l.text = [NSString stringWithFormat:@"%i", c4n];
        [self freshGrid];
        if (d5tower == true) {
            d5n = 0;
            d5l.text = [NSString stringWithFormat:@"%i", d5n];
            d5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d4if == true) {
        d5n = d5n + d4n;
        d4n = 0;
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        [self freshGrid];
        if (d5tower == true) {
            d5n = 0;
            d5l.text = [NSString stringWithFormat:@"%i", d5n];
            d5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (c5if == true) {
        d5n = d5n + c5n;
        c5n = 0;
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        c5l.text = [NSString stringWithFormat:@"%i", c5n];
        [self freshGrid];
        if (d5tower == true) {
            d5n = 0;
            d5l.text = [NSString stringWithFormat:@"%i", d5n];
            d5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e5if == true) {
        d5n = d5n + e5n;
        e5n = 0;
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        e5l.text = [NSString stringWithFormat:@"%i", e5n];
        [self freshGrid];
        if (d5tower == true) {
            d5n = 0;
            d5l.text = [NSString stringWithFormat:@"%i", d5n];
            d5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e4if == true) {
        d5n = d5n + e4n;
        e4n = 0;
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        [self freshGrid];
        if (d5tower == true) {
            d5n = 0;
            d5l.text = [NSString stringWithFormat:@"%i", d5n];
            d5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) e1a {
    [self prepareForSelection];
    e1if = true;
    [e1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (d1n < e1n && d1wall == false) {
        d1b.enabled = true;
        [d1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d2n < e1n && d2wall == false) {
        d2b.enabled = true;
        [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e2n < e1n && e2wall == false) {
        e2b.enabled = true;
        [e2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d2if == true) {
        e1n = e1n + d2n;
        d2n = 0;
        e1l.text = [NSString stringWithFormat:@"%i", e1n];
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        [self freshGrid];
        if (e1tower == true) {
            e1n = 0;
            e1l.text = [NSString stringWithFormat:@"%i", e1n];
            e1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d1if == true) {
        e1n = e1n + d1n;
        d1n = 0;
        e1l.text = [NSString stringWithFormat:@"%i", e1n];
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        [self freshGrid];
        if (e1tower == true) {
            e1n = 0;
            e1l.text = [NSString stringWithFormat:@"%i", e1n];
            e1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e2if == true) {
        e1n = e1n + e2n;
        e2n = 0;
        e1l.text = [NSString stringWithFormat:@"%i", e1n];
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        [self freshGrid];
        if (e1tower == true) {
            e1n = 0;
            e1l.text = [NSString stringWithFormat:@"%i", e1n];
            e1tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) e2a {
    [self prepareForSelection];
    e2if = true;
    [e2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (d1n < e2n && d1wall == false) {
        d1b.enabled = true;
        [d1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e1n < e2n && e1wall == false) {
        e1b.enabled = true;
        [e1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d2n < e2n && d2wall == false) {
        d2b.enabled = true;
        [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d3n < e2n && d3wall == false) {
        d3b.enabled = true;
        [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e3n < e2n && e3wall == false) {
        e3b.enabled = true;
        [e3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d3if == true) {
        e2n = e2n + d3n;
        d3n = 0;
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        [self freshGrid];
        if (e2tower == true) {
            e2n = 0;
            e2l.text = [NSString stringWithFormat:@"%i", e2n];
            e2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d2if == true) {
        e2n = e2n + d2n;
        d2n = 0;
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        [self freshGrid];
        if (e2tower == true) {
            e2n = 0;
            e2l.text = [NSString stringWithFormat:@"%i", e2n];
            e2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d1if == true) {
        e2n = e2n + d1n;
        d1n = 0;
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        d1l.text = [NSString stringWithFormat:@"%i", d1n];
        [self freshGrid];
        if (e2tower == true) {
            e2n = 0;
            e2l.text = [NSString stringWithFormat:@"%i", e2n];
            e2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e3if == true) {
        e2n = e2n + e3n;
        e3n = 0;
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        [self freshGrid];
        if (e2tower == true) {
            e2n = 0;
            e2l.text = [NSString stringWithFormat:@"%i", e2n];
            e2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e1if == true) {
        e2n = e2n + e1n;
        e1n = 0;
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        e1l.text = [NSString stringWithFormat:@"%i", e1n];
        [self freshGrid];
        if (e2tower == true) {
            e2n = 0;
            e2l.text = [NSString stringWithFormat:@"%i", e2n];
            e2tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) e3a {
    [self prepareForSelection];
    e3if = true;
    [e3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (d2n < e3n && d2wall == false) {
        d2b.enabled = true;
        [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e2n < e3n && e2wall == false) {
        e2b.enabled = true;
        [e2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d3n < e3n && d3wall == false) {
        d3b.enabled = true;
        [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4n < e3n && d4wall == false) {
        d4b.enabled = true;
        [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e4n < e3n && e4wall == false) {
        e4b.enabled = true;
        [e4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4if == true) {
        e3n = e3n + d4n;
        d4n = 0;
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        [self freshGrid];
        if (e3tower == true) {
            e3n = 0;
            e3l.text = [NSString stringWithFormat:@"%i", e3n];
            e3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d3if == true) {
        e3n = e3n + d3n;
        d3n = 0;
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        [self freshGrid];
        if (e3tower == true) {
            e3n = 0;
            e3l.text = [NSString stringWithFormat:@"%i", e3n];
            e3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d2if == true) {
        e3n = e3n + d2n;
        d2n = 0;
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        d2l.text = [NSString stringWithFormat:@"%i", d2n];
        [self freshGrid];
        if (e3tower == true) {
            e3n = 0;
            e3l.text = [NSString stringWithFormat:@"%i", e3n];
            e3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e4if == true) {
        e3n = e3n + e4n;
        e4n = 0;
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        [self freshGrid];
        if (e3tower == true) {
            e3n = 0;
            e3l.text = [NSString stringWithFormat:@"%i", e3n];
            e3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e2if == true) {
        e3n = e3n + e2n;
        e2n = 0;
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        e2l.text = [NSString stringWithFormat:@"%i", e2n];
        [self freshGrid];
        if (e3tower == true) {
            e3n = 0;
            e3l.text = [NSString stringWithFormat:@"%i", e3n];
            e3tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) e4a {
    [self prepareForSelection];
    e4if = true;
    [e4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (d3n < e4n && d3wall == false) {
        d3b.enabled = true;
        [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e3n < e4n && e3wall == false) {
        e3b.enabled = true;
        [e3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4n < e4n && d4wall == false) {
        d4b.enabled = true;
        [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d5n < e4n && d5wall == false) {
        d5b.enabled = true;
        [d5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e5n < e4n && e5wall == false) {
        e5b.enabled = true;
        [e5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4if == true) {
        e4n = e4n + d4n;
        d4n = 0;
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        [self freshGrid];
        if (e4tower == true) {
            e4n = 0;
            e4l.text = [NSString stringWithFormat:@"%i", e4n];
            e4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d3if == true) {
        e4n = e4n + d3n;
        d3n = 0;
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        d3l.text = [NSString stringWithFormat:@"%i", d3n];
        [self freshGrid];
        if (e4tower == true) {
            e4n = 0;
            e4l.text = [NSString stringWithFormat:@"%i", e4n];
            e4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d5if == true) {
        e4n = e4n + d5n;
        d5n = 0;
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        [self freshGrid];
        if (e4tower == true) {
            e4n = 0;
            e4l.text = [NSString stringWithFormat:@"%i", e4n];
            e4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e5if == true) {
        e4n = e4n + e5n;
        e5n = 0;
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        e5l.text = [NSString stringWithFormat:@"%i", e5n];
        [self freshGrid];
        if (e4tower == true) {
            e4n = 0;
            e4l.text = [NSString stringWithFormat:@"%i", e4n];
            e4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e3if == true) {
        e4n = e4n + e3n;
        e3n = 0;
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        e3l.text = [NSString stringWithFormat:@"%i", e3n];
        [self freshGrid];
        if (e4tower == true) {
            e4n = 0;
            e4l.text = [NSString stringWithFormat:@"%i", e4n];
            e4tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}
-(IBAction) e5a {
    [self prepareForSelection];
    e5if = true;
    [e5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-selected.png"]]];
    if (d4n < e5n && d4wall == false) {
        d4b.enabled = true;
        [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d5n < e5n && d5wall == false) {
        d5b.enabled = true;
        [d5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (e4n < e5n && e4wall == false) {
        e4b.enabled = true;
        [e4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-good-bordered.png"]]];
    }
    if (d4if == true) {
        e5n = e5n + d4n;
        d4n = 0;
        e5l.text = [NSString stringWithFormat:@"%i", e5n];
        d4l.text = [NSString stringWithFormat:@"%i", d4n];
        [self freshGrid];
        if (e5tower == true) {
            e5n = 0;
            e5l.text = [NSString stringWithFormat:@"%i", e5n];
            e5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (d5if == true) {
        e5n = e5n + d5n;
        d5n = 0;
        e5l.text = [NSString stringWithFormat:@"%i", e5n];
        d5l.text = [NSString stringWithFormat:@"%i", d5n];
        [self freshGrid];
        if (e5tower == true) {
            e5n = 0;
            e5l.text = [NSString stringWithFormat:@"%i", e5n];
            e5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
    if (e4if == true) {
        e5n = e5n + e4n;
        e4n = 0;
        e5l.text = [NSString stringWithFormat:@"%i", e5n];
        e4l.text = [NSString stringWithFormat:@"%i", e4n];
        [self freshGrid];
        if (e5tower == true) {
            e5n = 0;
            e5l.text = [NSString stringWithFormat:@"%i", e5n];
            e5tower = false;
            towers = towers - 1;
			[self.view shakeX];
			[self explodeSound];
            [self freshGrid];
        }
    }
}

-(IBAction)cancelGrid {
    [self snapSound];
    [self stopJiggle];
    restartButton.hidden = false;
    restartButton.enabled = true;
    cancelButton.hidden = true;
    cancelButton.enabled = false;
    
    a1if = false;
    a2if = false;
    a3if = false;
    a4if = false;
    a5if = false;
    b1if = false;
    b2if = false;
    b3if = false;
    b4if = false;
    b5if = false;
    c1if = false;
    c2if = false;
    c3if = false;
    c4if = false;
    c5if = false;
    d1if = false;
    d2if = false;
    d3if = false;
    d4if = false;
    d5if = false;
    e1if = false;
    e2if = false;
    e3if = false;
    e4if = false;
    e5if = false;
    
    a1b.enabled = true;
    a2b.enabled = true;
    a3b.enabled = true;
    a4b.enabled = true;
    a5b.enabled = true;
    b1b.enabled = true;
    b2b.enabled = true;
    b3b.enabled = true;
    b4b.enabled = true;
    b5b.enabled = true;
    c1b.enabled = true;
    c2b.enabled = true;
    c3b.enabled = true;
    c4b.enabled = true;
    c5b.enabled = true;
    d1b.enabled = true;
    d2b.enabled = true;
    d3b.enabled = true;
    d4b.enabled = true;
    d5b.enabled = true;
    e1b.enabled = true;
    e2b.enabled = true;
    e3b.enabled = true;
    e4b.enabled = true;
    e5b.enabled = true;
    
    if (a1tower == true) {
        a1b.enabled = false;
        a1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (a2tower == true) {
        a2b.enabled = false;
        a2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (a3tower == true) {
        a3b.enabled = false;
        a3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (a4tower == true) {
        a4b.enabled = false;
        a4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (a5tower == true) {
        a5b.enabled = false;
        a5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (b1tower == true) {
        b1b.enabled = false;
        b1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (b2tower == true) {
        b2b.enabled = false;
        b2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (b3tower == true) {
        b3b.enabled = false;
        b3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (b4tower == true) {
        b4b.enabled = false;
        b4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (b5tower == true) {
        b5b.enabled = false;
        b5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (c1tower == true) {
        c1b.enabled = false;
        c1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (c2tower == true) {
        c2b.enabled = false;
        c2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (c3tower == true) {
        c3b.enabled = false;
        c3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (c4tower == true) {
        c4b.enabled = false;
        c4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (c5tower == true) {
        c5b.enabled = false;
        c5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (d1tower == true) {
        d1b.enabled = false;
        d1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (d2tower == true) {
        d2b.enabled = false;
        d2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (d3tower == true) {
        d3b.enabled = false;
        d3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (d4tower == true) {
        d4b.enabled = false;
        d4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (d5tower == true) {
        d5b.enabled = false;
        d5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (e1tower == true) {
        e1b.enabled = false;
        e1l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (e2tower == true) {
        e2b.enabled = false;
        e2l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (e3tower == true) {
        e3b.enabled = false;
        e3l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (e4tower == true) {
        e4b.enabled = false;
        e4l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    if (e5tower == true) {
        e5b.enabled = false;
        e5l.textColor = [UIColor colorWithRed:0 green:0.60 blue:0.97 alpha:1.0];
    }
    
    if (a1n == 0) {
        a1b.enabled = false;
        a1l.hidden = true;
    }
    if (a2n == 0) {
        a2b.enabled = false;
        a2l.hidden = true;
    }
    if (a3n == 0) {
        a3b.enabled = false;
        a3l.hidden = true;
    }
    if (a4n == 0) {
        a4b.enabled = false;
        a4l.hidden = true;
    }
    if (a5n == 0) {
        a5b.enabled = false;
        a5l.hidden = true;
    }
    if (b1n == 0) {
        b1b.enabled = false;
        b1l.hidden = true;
    }
    if (b2n == 0) {
        b2b.enabled = false;
        b2l.hidden = true;
    }
    if (b3n == 0) {
        b3b.enabled = false;
        b3l.hidden = true;
    }
    if (b4n == 0) {
        b4b.enabled = false;
        b4l.hidden = true;
    }
    if (b5n == 0) {
        b5b.enabled = false;
        b5l.hidden = true;
    }
    if (c1n == 0) {
        c1b.enabled = false;
        c1l.hidden = true;
    }
    if (c2n == 0) {
        c2b.enabled = false;
        c2l.hidden = true;
    }
    if (c3n == 0) {
        c3b.enabled = false;
        c3l.hidden = true;
    }
    if (c4n == 0) {
        c4b.enabled = false;
        c4l.hidden = true;
    }
    if (c5n == 0) {
        c5b.enabled = false;
        c5l.hidden = true;
    }
    if (d1n == 0) {
        d1b.enabled = false;
        d1l.hidden = true;
    }
    if (d2n == 0) {
        d2b.enabled = false;
        d2l.hidden = true;
    }
    if (d3n == 0) {
        d3b.enabled = false;
        d3l.hidden = true;
    }
    if (d4n == 0) {
        d4b.enabled = false;
        d4l.hidden = true;
    }
    if (d5n == 0) {
        d5b.enabled = false;
        d5l.hidden = true;
    }
    if (e1n == 0) {
        e1b.enabled = false;
        e1l.hidden = true;
    }
    if (e2n == 0) {
        e2b.enabled = false;
        e2l.hidden = true;
    }
    if (e3n == 0) {
        e3b.enabled = false;
        e3l.hidden = true;
    }
    if (e4n == 0) {
        e4b.enabled = false;
        e4l.hidden = true;
    }
    if (e5n == 0) {
        e5b.enabled = false;
        e5l.hidden = true;
    }
    
    if (a1n < 0) {
        a1b.enabled = false;
    }
    if (a2n < 0) {
        a2b.enabled = false;
    }
    if (a3n < 0) {
        a3b.enabled = false;
    }
    if (a4n < 0) {
        a4b.enabled = false;
    }
    if (a5n < 0) {
        a5b.enabled = false;
    }
    if (b1n < 0) {
        b1b.enabled = false;
    }
    if (b2n < 0) {
        b2b.enabled = false;
    }
    if (b3n < 0) {
        b3b.enabled = false;
    }
    if (b4n < 0) {
        b4b.enabled = false;
    }
    if (b5n < 0) {
        b5b.enabled = false;
    }
    if (c1n < 0) {
        c1b.enabled = false;
    }
    if (c2n < 0) {
        c2b.enabled = false;
    }
    if (c3n < 0) {
        c3b.enabled = false;
    }
    if (c4n < 0) {
        c4b.enabled = false;
    }
    if (c5n < 0) {
        c5b.enabled = false;
    }
    if (d1n < 0) {
        d1b.enabled = false;
    }
    if (d2n < 0) {
        d2b.enabled = false;
    }
    if (d3n < 0) {
        d3b.enabled = false;
    }
    if (d4n < 0) {
        d4b.enabled = false;
    }
    if (d5n < 0) {
        d5b.enabled = false;
    }
    if (e1n < 0) {
        e1b.enabled = false;
    }
    if (e2n < 0) {
        e2b.enabled = false;
    }
    if (e3n < 0) {
        e3b.enabled = false;
    }
    if (e4n < 0) {
        e4b.enabled = false;
    }
    if (e5n < 0) {
        e5b.enabled = false;
    }
    
    if (a1n != 0 && a1n > 0 && a1tower == false) {
        a1b.enabled = true;
        a1l.hidden = false;
    }
    if (a2n != 0 && a2n > 0 && a2tower == false) {
        a2b.enabled = true;
        a2l.hidden = false;
    }
    if (a3n != 0 && a3n > 0 && a3tower == false) {
        a3b.enabled = true;
        a3l.hidden = false;
    }
    if (a4n != 0 && a4n > 0 && a4tower == false) {
        a4b.enabled = true;
        a4l.hidden = false;
    }
    if (a5n != 0 && a5n > 0 && a5tower == false) {
        a5b.enabled = true;
        a5l.hidden = false;
    }
    if (b1n != 0 && b1n > 0 && b1tower == false) {
        b1b.enabled = true;
        b1l.hidden = false;
    }
    if (b2n != 0 && b2n > 0 && b2tower == false) {
        b2b.enabled = true;
        b2l.hidden = false;
    }
    if (b3n != 0 && b3n > 0 && b3tower == false) {
        b3b.enabled = true;
        b3l.hidden = false;
    }
    if (b4n != 0 && b4n > 0 && b4tower == false) {
        b4b.enabled = true;
        b4l.hidden = false;
    }
    if (b5n != 0 && b5n > 0 && b5tower == false) {
        b5b.enabled = true;
        b5l.hidden = false;
    }
    if (c1n != 0 && b1n > 0 && c1tower == false) {
        c1b.enabled = true;
        c1l.hidden = false;
    }
    if (c2n != 0 && c2n > 0 && c2tower == false) {
        c2b.enabled = true;
        c2l.hidden = false;
    }
    if (c3n != 0 && c3n > 0 && c3tower == false) {
        c3b.enabled = true;
        c3l.hidden = false;
    }
    if (c4n != 0 && c4n > 0 && c4tower == false) {
        c4b.enabled = true;
        c4l.hidden = false;
    }
    if (c5n != 0 && c5n > 0 && c5tower == false) {
        c5b.enabled = true;
        c5l.hidden = false;
    }
    if (d1n != 0 && d1n > 0 && d1tower == false) {
        d1b.enabled = true;
        d1l.hidden = false;
    }
    if (d2n != 0 && d2n > 0 && d2tower == false) {
        d2b.enabled = true;
        d2l.hidden = false;
    }
    if (d3n != 0 && d3n > 0 && d3tower == false) {
        d3b.enabled = true;
        d3l.hidden = false;
    }
    if (d4n != 0 && d4n > 0 && d4tower == false) {
        d4b.enabled = true;
        d4l.hidden = false;
    }
    if (d5n != 0 && d5n > 0 && d5tower == false) {
        d5b.enabled = true;
        d5l.hidden = false;
    }
    if (e1n != 0 && e1n > 0 && e1tower == false) {
        e1b.enabled = true;
        e1l.hidden = false;
    }
    if (e2n != 0 && e2n > 0 && e2tower == false) {
        e2b.enabled = true;
        e2l.hidden = false;
    }
    if (e3n != 0 && e3n > 0 && e3tower == false) {
        e3b.enabled = true;
        e3l.hidden = false;
    }
    if (e4n != 0 && e4n > 0 && e4tower == false) {
        e4b.enabled = true;
        e4l.hidden = false;
    }
    if (e5n != 0 && e5n > 0 && e5tower == false) {
        e5b.enabled = true;
        e5l.hidden = false;
    }
    
    [a1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [a2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [a3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [a4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [a5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [b5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [c5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [d5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e1i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e2i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e3i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e4i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    [e5i setImage:[UIImage imageNamed:[NSString stringWithFormat:@"box-blank.png"]]];
    
    if (a1tower == false) {
        a1l.textColor = [UIColor whiteColor];
    }
    if (a2tower == false) {
        a2l.textColor = [UIColor whiteColor];
    }    
    if (a3tower == false) {
        a3l.textColor = [UIColor whiteColor];
    }
    if (a4tower == false) {
        a4l.textColor = [UIColor whiteColor];
    }
    if (a5tower == false) {
        a5l.textColor = [UIColor whiteColor];
    }
    if (b1tower == false) {
        b1l.textColor = [UIColor whiteColor];
    }
    if (b2tower == false) {
        b2l.textColor = [UIColor whiteColor];
    }    
    if (b3tower == false) {
        b3l.textColor = [UIColor whiteColor];
    }
    if (b4tower == false) {
        b4l.textColor = [UIColor whiteColor];
    }
    if (b5tower == false) {
        b5l.textColor = [UIColor whiteColor];
    }
    if (c1tower == false) {
        c1l.textColor = [UIColor whiteColor];
    }
    if (c2tower == false) {
        c2l.textColor = [UIColor whiteColor];
    }    
    if (c3tower == false) {
        c3l.textColor = [UIColor whiteColor];
    }
    if (c4tower == false) {
        c4l.textColor = [UIColor whiteColor];
    }
    if (c5tower == false) {
        c5l.textColor = [UIColor whiteColor];
    }
    if (d1tower == false) {
        d1l.textColor = [UIColor whiteColor];
    }
    if (d2tower == false) {
        d2l.textColor = [UIColor whiteColor];
    }    
    if (d3tower == false) {
        d3l.textColor = [UIColor whiteColor];
    }
    if (d4tower == false) {
        d4l.textColor = [UIColor whiteColor];
    }
    if (d5tower == false) {
        d5l.textColor = [UIColor whiteColor];
    }
    if (e1tower == false) {
        e1l.textColor = [UIColor whiteColor];
    }
    if (e2tower == false) {
        e2l.textColor = [UIColor whiteColor];
    }    
    if (e3tower == false) {
        e3l.textColor = [UIColor whiteColor];
    }
    if (e4tower == false) {
        e4l.textColor = [UIColor whiteColor];
    }
    if (e5tower == false) {
        e5l.textColor = [UIColor whiteColor];
    }
    
    [self disableWalls];
    
    if (towers <= 0) {
        [self winLevel];
    }
}

-(IBAction)mainMenu {
    [self snapSound];
    [self dismissViewControllerAnimated:NO completion:nil];
}

-(IBAction)levelSelect {
    [self snapSound];
    [self loadProgress];
    [self loadTotalBombs];
    [self menuInterface];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    levelsCount = 36;
    buttonRadius = 4;
    animationSpeed = 0.2;
    animating = false;
    
    progress = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedProgress"];
    level1bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs1"];
    level2bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs2"];
    level3bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs3"];
    level4bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs4"];
    level5bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs5"];
    level6bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs6"];
    level7bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs7"];
    level8bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs8"];
    level9bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs9"];
    level10bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs10"];
    level11bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs11"];
    level12bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs12"];
    level13bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs13"];
    level14bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs14"];
    level15bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs15"];
    level16bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs16"];
    level17bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs17"];
    level18bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs18"];
    level19bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs19"];
    level20bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs20"];
    level21bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs21"];
    level22bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs22"];
    level23bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs23"];
    level24bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs24"];
    level25bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs25"];
    level26bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs26"];
    level27bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs27"];
    level28bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs28"];
    level29bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs29"];
    level30bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs30"];
    level31bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs31"];
    level32bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs32"];
    level33bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs33"];
    level34bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs34"];
    level35bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs35"];
    level36bombs = [[NSUserDefaults standardUserDefaults] floatForKey:@"savedBombs36"];
    [self loadProgress];
    [self loadTotalBombs];
    //[self loadShadows];
    
    [self menuInterface];
    
    endView.hidden = true;
    [myScrollView setScrollEnabled:YES];
    [myScrollView setContentSize:CGSizeMake(320, 1688)];
    
    a1n = 0;
    a2n = 0;
    a3n = 0;
    a4n = 0;
    a5n = 0;
    b1n = 0;
    b2n = 0;
    b3n = 0;
    b4n = 0;
    b5n = 0;
    c1n = 0;
    c2n = 0;
    c3n = 0;
    c4n = 0;
    c5n = 0;
    d1n = 0;
    d2n = 0;
    d3n = 0;
    d4n = 0;
    d5n = 0;
    e1n = 0;
    e2n = 0;
    e3n = 0;
    e4n = 0;
    e5n = 0;
    
    a1if = false;
    a2if = false;
    a3if = false;
    a4if = false;
    a5if = false;
    b1if = false;
    b2if = false;
    b3if = false;
    b4if = false;
    b5if = false;
    c1if = false;
    c2if = false;
    c3if = false;
    c4if = false;
    c5if = false;
    d1if = false;
    d2if = false;
    d3if = false;
    d4if = false;
    d5if = false;
    e1if = false;
    e2if = false;
    e3if = false;
    e4if = false;
    e5if = false;
    
    currentLevel = 1;
    [self level:currentLevel];
    
    selectView.clipsToBounds = NO;
    selectView.layer.cornerRadius = buttonRadius;
    selectView.layer.shadowRadius = buttonRadius;
    selectView.layer.shadowColor = [[UIColor blackColor] CGColor];
    selectView.layer.shadowOffset = CGSizeMake(0,0);
    selectView.layer.shadowOpacity = 0.2;
    selectView.layer.masksToBounds = NO;
    selectView.layer.rasterizationScale = [UIScreen mainScreen].scale;
    selectView.layer.shouldRasterize = YES;
    
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    self.a1l = nil;
    self.a2l = nil;
    self.a3l = nil;
    self.a4l = nil;
    self.a5l = nil;
    self.b1l = nil;
    self.b2l = nil;
    self.b3l = nil;
    self.b4l = nil;
    self.b5l = nil;
    self.c1l = nil;
    self.c2l = nil;
    self.c3l = nil;
    self.c4l = nil;
    self.c5l = nil;
    self.d1l = nil;
    self.d2l = nil;
    self.d3l = nil;
    self.d4l = nil;
    self.d5l = nil;
    self.e1l = nil;
    self.e2l = nil;
    self.e3l = nil;
    self.e4l = nil;
    self.e5l = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}

@end