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
    self.entryScrollView.delegate = self;
    self.entryScrollView.minimumZoomScale = 0.5;
    self.entryScrollView.maximumZoomScale = 10;
    [self.entryScrollView.delegate viewForZoomingInScrollView:self.entryScrollView];
    
}






@end
