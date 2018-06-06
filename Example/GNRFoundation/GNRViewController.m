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
    UIColor *color = [UIColor colorWithHexString:@"#111111"];
    self.view.backgroundColor = color;
    
    NSAttributedString *attStr = [NSString t_changeCorlorWithColor:[UIColor redColor] TotalString:nil SubStringArray:@[]];
    NSLog(@"AttStr %@",attStr);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
