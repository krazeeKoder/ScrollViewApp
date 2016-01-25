//
//  ViewController.m
//  ScrollViewApp
//
//  Created by Anthony Tulai on 2016-01-25.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *mainScrollView;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGestureRecognizer;

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
    lighthouse01.contentMode = UIViewContentModeScaleAspectFit;
    [self.mainScrollView addSubview:lighthouse01];
    
    
    UIImageView *lighthouse02 = [[UIImageView alloc] initWithFrame:CGRectMake(xPosition, 0, CGRectGetWidth(self.mainScrollView.frame), CGRectGetHeight(self.mainScrollView.frame))];
    xPosition += self.mainScrollView.frame.size.width;
    lighthouse02.image = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    lighthouse02.contentMode = UIViewContentModeScaleAspectFit;
    [self.mainScrollView addSubview:lighthouse02];
    
    
    UIImageView *lighthouse03 = [[UIImageView alloc] initWithFrame:CGRectMake(xPosition, 0, CGRectGetWidth(self.mainScrollView.frame), CGRectGetHeight(self.mainScrollView.frame))];
    xPosition += self.mainScrollView.frame.size.width;
    lighthouse03.image = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    lighthouse03.contentMode = UIViewContentModeScaleAspectFit;
    [self.mainScrollView addSubview:lighthouse03];
    
    float allWidths = CGRectGetWidth(lighthouse01.frame) + CGRectGetWidth(lighthouse02.frame) + CGRectGetWidth(lighthouse03.frame);
    
    self.mainScrollView.contentSize = CGSizeMake(allWidths, CGRectGetHeight(lighthouse01.frame));
    
    self.mainScrollView.delegate = self;
    self.mainScrollView.pagingEnabled = YES;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    DetailViewController *detailView = (DetailViewController *)segue.destinationViewController;
    
    if (self.mainScrollView.contentOffset.x / self.mainScrollView.frame.size.width == 0) {
        detailView.imageToUseName = @"Lighthouse.jpg";
    } else if (self.mainScrollView.contentOffset.x / self.mainScrollView.frame.size.width == 1) {
        detailView.imageToUseName = @"Lighthouse-night.jpg";
    } else {
        detailView.imageToUseName = @"Lighthouse-in-Field.jpg";
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
