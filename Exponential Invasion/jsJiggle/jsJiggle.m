//
//  jsJiggle.m
//  jsJiggleSample
//
//  Created by Jonah Siegle on 12-04-09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

//Credit for wobble effect http://stackoverflow.com/questions/929364/how-to-create-iphones-wobbling-icon-effect

#import "jsJiggle.h"

#define RADIANS(degrees) ((degrees * M_PI) / 90.0)

//Below you can change the speed of the jiggle, the lower the faster.
#define speedDuration 0.25 

@implementation jsJiggle

- (id)initWithObject:(id)ob{
    
    if (self = [super init]){
        
        _object = ob;
    }
    
    return self;
}

- (void)startJiggle{
        
    ((UIView *)_object).transform = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(-5));
    
    [UIView animateWithDuration:speedDuration 
                          delay:0.0 
                        options:(UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse)
                     animations:^ {
                         ((UIView *)_object).transform = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(5));
                     }
                     completion:NULL
     ];

}
- (void)stopJiggle{
    
    [UIView animateWithDuration:speedDuration
                          delay:0.0 
                        options:(UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear)
                     animations:^ {
                         ((UIView *)_object).transform = CGAffineTransformIdentity;
                     }
                     completion:NULL
     ];
}

@end
