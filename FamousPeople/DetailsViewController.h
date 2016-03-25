//
//  DetailsViewController.h
//  FamousPeople
//
//  Created by Yasmin Ahmad on 2016-03-24.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import <UIKit/UIKit.h>

//STEP #7

@class CelebrityItem;

@interface DetailsViewController : UIViewController

//STEP #28.2

@property (weak, nonatomic) IBOutlet UILabel *celebrityName;
@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;

//STEP #29

@property CelebrityItem *item;

//passing entire item

@end
