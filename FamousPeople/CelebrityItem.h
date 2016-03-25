//
//  Celebrity Item.h
//  FamousPeople
//
//  Created by Yasmin Ahmad on 2016-03-24.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import <UIKit/UIKit.h>

//STEP #5

@interface CelebrityItem : NSObject

@property NSString *name;
@property NSString *movie;
@property UIImage *image;


- (instancetype)initWithName:(NSString*)celebrityName Movie:(NSString*)celebrityMovie Image:(UIImage*)celebrityImage; 

@end


