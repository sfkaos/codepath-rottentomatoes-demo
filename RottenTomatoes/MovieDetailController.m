//
//  MovieDetailController.m
//  RottenTomatoes
//
//  Created by Win Raguini on 1/15/15.
//  Copyright (c) 2015 Win Inc. All rights reserved.
//

#import "MovieDetailController.h"
#import <UIImageView+AFNetworking.h>

@interface MovieDetailController ()
- (void)reload;
@end

@implementation MovieDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reload];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)reload {
    self.titleLabel.text = self.movieDetail.title;
    self.synopsisLabel.text = self.movieDetail.synopsis;
    self.ratingLabel.text = [NSString stringWithFormat:@"Rating: %@",self.movieDetail.ratings];
    self.castLabel.text = self.movieDetail.cast;
    [self.posterView setImageWithURL:[NSURL URLWithString:self.movieDetail.imageURL]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
