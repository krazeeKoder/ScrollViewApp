//
//  EntryViewController.m
//  ScrollViewApp
//
//  Created by Anthony Tulai on 2016-01-25.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//



#import "EntryViewController.h"

@interface EntryViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *entryScrollView;

@end


@implementation EntryViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    UIImageView *newImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.entryScrollView.frame), CGRectGetHeight(self.entryScrollView.frame))];
    self.entryScrollView.delegate = self;
    self.entryScrollView.minimumZoomScale = 0.5;
    self.entryScrollView.maximumZoomScale = 10;
    [self.entryScrollView.delegate viewForZoomingInScrollView:self.entryScrollView];
    
    [self.entryScrollView addSubview:newImageView];
    
}






@end
