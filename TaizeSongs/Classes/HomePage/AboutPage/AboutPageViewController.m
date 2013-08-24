//
//  AboutPageViewController.m
//  TaizeSongs
//
//  Created by Mary Rose Oh on 3/28/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

/* Displays entries in About Page */

#import "AboutPageViewController.h"

@interface AboutPageViewController ()

@end

@implementation AboutPageViewController

@synthesize aboutPageTextView;
@synthesize lastUpdateDate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
    }
    return self;
}

- (void)viewDidLoad
{
  NSLog(@"Taize Songs - About Page View");
  
  //Last update date of songs in repertory
  lastUpdateDate = @"24 August 2013";
  
  //Formatted string display for About Page
  NSString *aboutPageText = [NSString stringWithFormat:
                             @"Last updated: %@ \n\nCopyright © Ateliers et Presses de Taizé \n\n\nPowered by \nDungeon Innovations\nhttp://www.dungeoninnovations.com/"
                             , lastUpdateDate];
  
  aboutPageTextView.text = aboutPageText;

  [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
