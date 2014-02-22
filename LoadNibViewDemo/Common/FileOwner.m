//
//  FileOwner.m
//  LoadNibViewDemo
//
//  Created by Haven on 7/2/14.
//  Copyright (c) 2014 LF. All rights reserved.
//

#import "FileOwner.h"

@implementation FileOwner
+(id)viewFromNibNamed:(NSString*) nibName {
    FileOwner *owner = [self new];
    [[NSBundle mainBundle] loadNibNamed:nibName owner:owner options:nil];
    return owner.view;
}
@end
