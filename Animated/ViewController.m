//
//  ViewController.m
//  Animated
//
//  Created by Trinity Coyle on 4/5/15.
//  Copyright (c) 2015 Trinity Coyle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *imageNames = @[@"Cat.png",@"Dog.png",@"Bunny.png",@"Snail.png",@"Bird.png",@"Paw.png",@"Fish.png",@"Bone.png"];

    NSMutableArray *images = [[NSMutableArray alloc] init];
    for (int i = 0; i < imageNames.count; i++){
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    }
    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 200, 300, 300)];
    animationImageView.animationImages = images;
    animationImageView.animationDuration = 2;

    [self.view addSubview:animationImageView];
    [animationImageView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
