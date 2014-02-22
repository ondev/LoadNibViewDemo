//
//  UIView+Ext.m
//  LoadNibViewDemo
//
//  Created by Haven on 7/2/14.
//  Copyright (c) 2014 LF. All rights reserved.
//

#import "UIView+Ext.h"
#import "FileOwner.h"

@implementation UIView (Ext)
+(id)loadFromNib {
    return [self loadFromNibNamed:NSStringFromClass(self)];
}

+(id)loadFromNibNamed:(NSString*) nibName {
    return [FileOwner viewFromNibNamed:nibName];
}

+ (id)loadFromNibNoOwner {
    UIView *result = nil;
    NSArray* elements = [[NSBundle mainBundle] loadNibNamed: NSStringFromClass([self class]) owner: nil options: nil];
    for (id anObject in elements) {
        if ([anObject isKindOfClass:[self class]]) {
            result = anObject;
            break;
        }
    }
    return result;
}
@end
