//
//  UIView+Ext.h
//  LoadNibViewDemo
//
//  Created by Haven on 7/2/14.
//  Copyright (c) 2014 LF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Ext)
+ (id)loadFromNib;
+ (id)loadFromNibNamed:(NSString*) nibName;
+ (id)loadFromNibNoOwner;
@end
