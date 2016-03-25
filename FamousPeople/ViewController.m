//
//  ViewController.m
//  FamousPeople
//
//  Created by Yasmin Ahmad on 2016-03-24.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import "ViewController.h"
#import "CelebrityItem.h" //STEP #13
#import "CelebrityCellTableViewCell.h" //STEP #24
#import "DetailsViewController.h" //STEP #31

@interface ViewController ()<UITableViewDataSource> //STEP #10

//STEP #6 (SEE SECOND PART OF STEP BELOW)
@property NSMutableArray *celebrities;

//STEP #9
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


//STEP #6
    self.celebrities = [[NSMutableArray alloc]init];

    
//STEP #15
    self.tableView.dataSource = self;
 
    
//STEP 19&20
    CelebrityItem *celebrity1 = [[CelebrityItem alloc]initWithName:@"Tom" Movie: @"MI" Image:[UIImage imageNamed:@"Aydin"]];
    [self.celebrities addObject:celebrity1];
    CelebrityItem *celebrity2 = [[CelebrityItem alloc]initWithName:@"Karlo" Movie: @"Coding Master Part 3" Image:[UIImage imageNamed:@"AydinHomeDepot"]];
    [self.celebrities addObject:celebrity2];
}


//STEP #11
//STEP #18
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.celebrities.count;
}


//STEP #11
    //REMEMBER TO DECLARE CELL INDENTIFIER IN STORYBOARD
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"Cell";
    CelebrityCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    
//STEP #14
    //ONCE THE LABELS HAVE ACTUAL NAMES YOU WILL NEED TO RENAME THEM
    //THIS IS TO ENSURE THAT IT RUNS FOR NOW
    
    CelebrityItem *item = self.celebrities[indexPath.row];
    //cell.textLabel.text = item.name;
    //cell.textLabel.text = item.movie;
    
    //UPDATE THE LABELS ONCE CELEBRITY CELL HAS BEEN CREATED
    cell.headShot.image = item.image;
    cell.starName.text = item.name;
    cell.blockbuster.text = item.movie;
    
    return cell;
}


//STEP #28
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"showDetails"]) {
        DetailsViewController *destination = segue.destinationViewController;
        destination.item = self.celebrities[self.tableView.indexPathForSelectedRow.row]; 
    }
}
@end





//    if (cell == nil) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
//    }
//


//CREATING SEGUE

//Check what segue was triggered using the segue identifier
//Get the destination view controller property of the segue
//set the property of the destination view controller



