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
    
    //需要提前设置frame
    //Shadow 阴影为直角
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    view.layer.cornerRadius = 50;
    view.frame = CGRectMake(50, 50, 100, 100);
    [view addShadowOffset:CGSizeMake(0, 0) opacity:0.2 radius:8];
//    view.frame = CGRectMake(50, 50, 100, 100);
    [self.view addSubview:view];
    
    //Shadow 阴影圆角
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(50, 250, 100, 100)];
    view1.backgroundColor = [UIColor whiteColor];
    view1.layer.cornerRadius = 50;
    [view1 addShadowOffset:CGSizeMake(0, 0) opacity:0.2 radius:8 cornerRadius:50];
    [self.view addSubview:view1];
    
    //不需要提前设置frame
    //layer Shadow 阴影圆角
    UIView *view2 = [[UIView alloc]init];
    view2.backgroundColor = [UIColor whiteColor];
    [view2 setShadowOffset:CGSizeZero opacity:0.15 radius:8 cornerRadius:50];
    view2.frame = CGRectMake(50, 450, 100, 100);
    [self.view addSubview:view2];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
