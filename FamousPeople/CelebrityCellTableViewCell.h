//
//  CelebrityCellTableViewCell.h
//  FamousPeople
//
//  Created by Yasmin Ahmad on 2016-03-24.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import <UIKit/UIKit.h>

//STEP #21

@interface CelebrityCellTableViewCell : UITableViewCell

//STEP #23

@property (weak, nonatomic) IBOutlet UIImageView *headShot;
@property (weak, nonatomic) IBOutlet UILabel *starName;
@property (weak, nonatomic) IBOutlet UILabel *blockbuster;

@end
