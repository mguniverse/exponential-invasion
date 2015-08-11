//
//  jsJiggle.h
//  jsJiggleSample
//
//  Created by Jonah Siegle on 12-04-09.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface jsJiggle : NSObject{@private id _object;}

- (id)initWithObject:(id)ob;

- (void)startJiggle;
- (void)stopJiggle;

@end
