//
//  SongListingViewController.m
//  TaizeSongs
//
//  Created by Mary Rose Oh on 3/28/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

/* Displays the page with Alphabet Listing which links them to the songs sheets */

#import "SongListingViewController.h"
#import "SongSheetViewController.h"

@interface SongListingViewController ()

@end

@implementation SongListingViewController

@synthesize songListingPageEntries;
@synthesize index;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  NSLog(@"Taize Songs - Song Listing Page View");
  
  //Initialize alphabetical listing
  songListingPageEntries = [[NSArray alloc]
                            initWithObjects: @"A" //0
                                           , @"B" //1
                                           , @"C" //2
                                           , @"D" //3
                                           , @"E" //4
                                           , @"F" //5
                                           , @"G" //6
                                           , @"H" //7
                                           , @"I" //8
                                           , @"J" //9
                                           , @"K" //10
                                           , @"L" //11
                                           , @"M" //12
                                           , @"N" //13
                                           , @"O" //14
                                           , @"P" //15
                                           , @"Q" //16
                                           , @"R" //17
                                           , @"S" //18
                                           , @"T" //19
                                           , @"U" //20
                                           , @"V" //21
                                           , @"W" //22
                                           , @"X" //23
                                           , @"Y" //24
                                           , @"Z" //25
                                           , nil];
 
  [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source implementation
- (NSInteger) numberOfSectionsInTableView:(UITableView *) tableView
{
  //Return the number of sections.
  return 1;
}

- (NSString *) tableView:(UITableView *) tableView titleForHeaderInSection:(NSInteger)section
{
  NSString *myTitle = [[NSString alloc] initWithFormat:@""];
  return myTitle;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  //Return the number of rows in the section
  return [songListingPageEntries count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"songListingPageCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  //configure the cell
  cell.textLabel.text = [songListingPageEntries objectAtIndex:indexPath.row];
  cell.imageView.image = [UIImage imageNamed:@"taize_cross_red.png"];
  
  cell.textLabel.numberOfLines = 0;
  return cell;
}


//Change the Height of the Cell [Default is 45]:
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
  return 70;
}


#pragma mark - Segue
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{  
  index = indexPath.row;
  [self performSegueWithIdentifier:@"songListingToSongSheet" sender:self];
}


#pragma mark - Prepare for segue to Song Sheet Page
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  if ([segue.identifier isEqualToString:@"songListingToSongSheet"])
  {
    NSLog(@"prepare for segue - index: %d", index);
    SongSheetViewController *destViewController = segue.destinationViewController;
    destViewController.index = index;
  }
}


@end
