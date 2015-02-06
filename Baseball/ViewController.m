//
//  ViewController.m
//  Baseball
//
//  Created by Dave on 2/6/15.
//  Copyright (c) 2015 Dave. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    plusCounter = 0;
    addPointHome = [UIButton buttonWithType:UIButtonTypeSystem];
    [addPointHome setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [addPointHome setTitle:@"+" forState:UIControlStateNormal];
    addPointHome.titleLabel.font = [UIFont systemFontOfSize:40.0f];
    addPointHome.frame = CGRectMake(10, 10, self.view.frame.size.width / 2, self.view.frame.size.width / 2);
    [addPointHome addTarget:self action:@selector(plusPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:addPointHome];
    
    plusLabel = [[UILabel alloc] initWithFrame:CGRectMake(15,self.view.frame.size.height - 40, 30, 30)];
    plusLabel.font = [UIFont systemFontOfSize:16.0f];
    plusLabel.backgroundColor = [UIColor clearColor];
    plusLabel.text = @"";
    [self.view addSubview:plusLabel];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)plusPressed {
    plusCounter++;
    plusLabel.text = [NSString stringWithFormat:@"%i", plusCounter];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
