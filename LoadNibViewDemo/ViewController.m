//
//  ViewController.m
//  LoadNibViewDemo
//
//  Created by Haven on 7/2/14.
//  Copyright (c) 2014 LF. All rights reserved.
//

#import "ViewController.h"
#import "FileOwner.h"
#import "UIView+Ext.h"
#import "View5.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIView *referencedView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 1
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"View1" owner:nil options:nil];
    UIView *v = [views lastObject];
    CGRect r = v.frame;
    r.origin.y += 80;
    v.frame = r;
    [self.view addSubview:v];
    
    // 2
    [[NSBundle mainBundle] loadNibNamed:@"View2" owner:self options:nil];
    r = _referencedView.frame;
    r.origin.y = v.frame.size.height + v.frame.origin.y;
    _referencedView.frame = r;
    [self.view addSubview:_referencedView];
    
    // 3
    FileOwner *owner = [FileOwner new];
    [[NSBundle mainBundle] loadNibNamed:@"View3" owner:owner options:nil];
    r = owner.view.frame;
    r.origin.y = _referencedView.frame.origin.y + _referencedView.frame.size.height;
    owner.view.frame = r;
    [self.view addSubview:owner.view];
    
    // 4
    UIView *v4 = [UIView loadFromNibNamed:@"View4"];
    r = v4.frame;
    r.origin.y = owner.view.frame.origin.y + owner.view.frame.size.height;
    v4.frame = r;
    [self.view addSubview:v4];

    // 5
    View5 *v5 = [View5 loadFromNib];
    r = v5.frame;
    r.origin.y = v4.frame.origin.y + v4.frame.size.height;
    v5.frame = r;
    [self.view addSubview:v5];
    
    // 6
    UIView *v6 = [[UIViewController alloc] initWithNibName:@"View6" bundle:nil].view;
    r = v6.frame;
    r.origin.y = v5.frame.origin.y + v5.frame.size.height;
    v6.frame = r;
    [self.view addSubview:v6];
}

//xib 用法一，  xib from xib 二

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
