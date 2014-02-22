//
//  EmbeddedView.m
//  LoadNibViewDemo
//
//  Created by Haven on 10/2/14.
//  Copyright (c) 2014 LF. All rights reserved.
//

#import "EmbeddedView.h"

@implementation EmbeddedView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/



- (IBAction)click:(id)sender {
    NSLog(@"Click");
}

- (void)dealloc {
    NSLog(@"Embedded View dealloc");
}
@end
