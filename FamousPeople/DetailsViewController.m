//
//  DetailsViewController.m
//  FamousPeople
//
//  Created by Yasmin Ahmad on 2016-03-24.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import "DetailsViewController.h"
#import "CelebrityItem.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

//STEP #30

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.celebrityName.text = self.item.name;
    self.detailImageView.image = self.item.image; 
}

@end







/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
