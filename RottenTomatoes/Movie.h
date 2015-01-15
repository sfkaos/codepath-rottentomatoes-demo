//
//  Movie.h
//  RottenTomatoes
//
//  Created by Win Raguini on 1/15/15.
//  Copyright (c) 2015 Win Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *synopsis;
@property (nonatomic, strong) NSString *cast;
@property (nonatomic, strong) NSString *ratings;
@property (nonatomic, strong) NSString *imageURL;

- (id)initWithDictionary: (NSDictionary*)dictionary;
@end
