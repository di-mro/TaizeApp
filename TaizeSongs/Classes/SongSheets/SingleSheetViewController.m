//
//  SingleSheetViewController.m
//  TaizeSongs
//
//  Created by Mary Rose Oh on 3/28/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

#import "SingleSheetViewController.h"

@interface SingleSheetViewController ()

@end

@implementation SingleSheetViewController

@synthesize songSheetImageDisplay;
@synthesize selectedSongSheet;

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
  NSLog(@"Taize Songs - Song Sheet Image Page View");
  
  NSLog(@"selectedSongSheet: %@", selectedSongSheet);
  songSheetImageDisplay.image = selectedSongSheet;
  [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
