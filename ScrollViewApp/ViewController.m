//
//  ViewController.m
//  ScrollViewApp
//
//  Created by Anthony Tulai on 2016-01-25.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *mainScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    CGFloat xPosition = 0;
    
    UIImageView *lighthouse01 = [[UIImageView alloc] initWithFrame:CGRectMake(xPosition, 0, CGRectGetWidth(self.mainScrollView.frame), CGRectGetHeight(self.mainScrollView.frame))];
    xPosition += self.mainScrollView.frame.size.width;
    lighthouse01.image = [UIImage imageNamed:@"Lighthouse.jpg"];
    lighthouse01.contentMode = UIViewContentModeScaleToFill;
    [self.mainScrollView addSubview:lighthouse01];
    
    
    UIImageView *lighthouse02 = [[UIImageView alloc] initWithFrame:CGRectMake(xPosition, 0, CGRectGetWidth(self.mainScrollView.frame), CGRectGetHeight(self.mainScrollView.frame))];
    xPosition += self.mainScrollView.frame.size.width;
    lighthouse02.image = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    lighthouse02.contentMode = UIViewContentModeScaleToFill;
    [self.mainScrollView addSubview:lighthouse02];
    
    
    UIImageView *lighthouse03 = [[UIImageView alloc] initWithFrame:CGRectMake(xPosition, 0, CGRectGetWidth(self.mainScrollView.frame), CGRectGetHeight(self.mainScrollView.frame))];
    xPosition += self.mainScrollView.frame.size.width;
    lighthouse03.image = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    lighthouse03.contentMode = UIViewContentModeScaleToFill;
    [self.mainScrollView addSubview:lighthouse03];
    
    float allWidths = CGRectGetWidth(lighthouse01.frame) + CGRectGetWidth(lighthouse02.frame) + CGRectGetWidth(lighthouse03.frame);
    
    self.mainScrollView.contentSize = CGSizeMake(allWidths, CGRectGetHeight(lighthouse01.frame));
    
    self.mainScrollView.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
