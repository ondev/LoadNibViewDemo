//
//  FileOwner.h
//  LoadNibViewDemo
//
//  Created by Haven on 7/2/14.
//  Copyright (c) 2014 LF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileOwner : NSObject
@property (nonatomic, weak) IBOutlet UIView *view;

+(id)viewFromNibNamed:(NSString*) nibName;
@end
