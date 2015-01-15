//
//  MovieCell.h
//  RottenTomatoes
//
//  Created by Win Raguini on 1/15/15.
//  Copyright (c) 2015 Win Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@end
