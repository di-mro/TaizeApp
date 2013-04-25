//
//  HomePageViewController.m
//  TaizeSongs
//
//  Created by Mary Rose Oh on 3/28/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

/* First page upon loading the application */


#import "HomePageViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

@synthesize homePageEntries;
@synthesize homePageIcons;


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
  NSLog(@"Taize Songs - Home Page View");
  
  //Initialize display entries in Home Page
  homePageEntries = [[NSArray alloc]
                     initWithObjects: @"Song Listing"
                                    , @"About"
                                    , nil];
  
  homePageIcons = [[NSArray alloc]
                   initWithObjects: @"songsheet_icon.png"
                                  , @"dungeon_icon.png"
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
  NSString *myTitle = [[NSString alloc] initWithFormat:@"Menu"];
  return myTitle;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  //Return the number of rows in the section
  return [homePageEntries count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"homePageCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  //configure the cell
  cell.textLabel.text = [self.homePageEntries objectAtIndex:indexPath.row];
  cell.imageView.image = [UIImage imageNamed:@"taize_cross_yellow.png"];
  //cell.imageView.image = [UIImage imageNamed:(NSString *)[self.homePageIcons objectAtIndex:indexPath.row]];
  
  cell.textLabel.numberOfLines = 0;
  return cell;
}


#pragma mark - Segue
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  switch (indexPath.row)
  {
    //Song Listing Page
    case 0: [self performSegueWithIdentifier:@"homeToSongListing" sender:self];
      break;
    //About Page
    case 1: [self performSegueWithIdentifier:@"homeToAbout" sender:self];
      break;
    default: break;
  }
}


@end
