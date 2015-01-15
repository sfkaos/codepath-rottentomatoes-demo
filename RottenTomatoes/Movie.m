//
//  Movie.m
//  RottenTomatoes
//
//  Created by Win Raguini on 1/15/15.
//  Copyright (c) 2015 Win Inc. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (id)initWithDictionary: (NSDictionary*)dictionary {
    self = [super init];
    if (self ) {
        self.title = dictionary[@"title"];
        self.synopsis = dictionary[@"synopsis"];

        NSMutableArray *castArray = [[NSMutableArray alloc] init];
        NSArray *abridged_cast = dictionary[@"abridged_cast"];
        for (id dict in abridged_cast) {
            [castArray addObject:dict[@"name"]];
        }

        self.cast = [castArray componentsJoinedByString:@","]; //returns contents of array as string separated by commas

        NSDictionary *ratingsDict = [[NSDictionary alloc] init];
        ratingsDict = dictionary[@"ratings"];
        self.ratings =[NSString stringWithFormat:@"%@",ratingsDict[@"audience_score"]];


        NSDictionary *posters = dictionary[@"posters"];
        self.imageURL = posters[@"detailed"];
        
    }
    return self;
}

@end
