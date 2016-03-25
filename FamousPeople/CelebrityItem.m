//
//  Celebrity Item.m
//  FamousPeople
//
//  Created by Yasmin Ahmad on 2016-03-24.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import "CelebrityItem.h"

@implementation CelebrityItem

//STEP #16 
- (instancetype)initWithName:(NSString*)celebrityName Movie:(NSString*)celebrityMovie Image:(UIImage*)celebrityImage

//just creating an instantype of CelebrityItem


{
    self = [super init];
    if (self) {
        self.name = celebrityName;
        self.movie = celebrityMovie;
        self.image = celebrityImage;
        
    }
    return self;
}

@end
