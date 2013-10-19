//
//  ViewController.m
//  CoreGraphicsDemo
//
//  Created by IndiaNIC on 01/10/13.
//  Copyright (c) 2013 IndiaNIC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect rect =self.view.frame;
    if (rect.origin.y > 0)
    {
        rect.origin.y = 0;
    }
    Graphics *graphics = [[Graphics alloc]initWithFrame:rect];
    [graphics setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:graphics];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
