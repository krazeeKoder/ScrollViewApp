//
//  EntryViewController.m
//  ScrollViewApp
//
//  Created by Anthony Tulai on 2016-01-25.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//



#import "DetailViewController.h"

@interface DetailViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) UIScrollView *detailScrollView;
@property (strong, nonatomic) UIImageView *detailImageView;

@end


@implementation DetailViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.detailScrollView  = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.detailImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.imageToUseName]];
    self.detailScrollView.delegate = self;
    self.detailScrollView.minimumZoomScale = 0.3;
    self.detailScrollView.maximumZoomScale = 10;
    self.detailScrollView.zoomScale = 0.3;
    //[self.entryScrollView.delegate viewForZoomingInScrollView:self.entryScrollView];
    
    [self.detailScrollView addSubview:self.detailImageView];
    [self.view addSubview:self.detailScrollView];
    
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.detailImageView;
}

@end
