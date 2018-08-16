//
//  GNRViewController.m
//  GNRFoundation
//
//  Created by ly918@qq.com on 05/23/2018.
//  Copyright (c) 2018 ly918@qq.com. All rights reserved.
//

#import "GNRViewController.h"
#import <GNRFoundation/GNRFoundation.h>

@interface GNRViewController ()

@end

@implementation GNRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Color Extension
    UIColor *color = [UIColor colorWithHexString:@"#FFFFFF"];
    self.view.backgroundColor = color;

    //NSAttributedString
    NSAttributedString *attStr = [NSString t_changeCorlorWithColor:[UIColor redColor] TotalString:nil SubStringArray:@[]];
    NSLog(@"AttStr %@",attStr);
    
    //Shadow 阴影为直角
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    view.backgroundColor = [UIColor whiteColor];
    view.layer.cornerRadius = 50;
    [view addShadowOffset:CGSizeMake(0, 0) opacity:0.2 radius:8];
    [self.view addSubview:view];
    
    //Shadow 阴影圆角
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(50, 250, 100, 100)];
    view1.backgroundColor = [UIColor whiteColor];
    view1.layer.cornerRadius = 50;
    [view1 addShadowOffset:CGSizeMake(0, 0) opacity:0.2 radius:8 cornerRadius:50];
    [self.view addSubview:view1];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
