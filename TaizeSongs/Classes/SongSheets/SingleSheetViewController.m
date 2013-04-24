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

@synthesize songSheetScroller;
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
  CGRect imageFrame = songSheetImageDisplay.frame; //CGRectMake(0, 0, 320, 720);
  imageFrame.size.height = 568;
  imageFrame.size.width = 320;
  
  songSheetImageDisplay = [[UIImageView alloc] initWithFrame:imageFrame];
  songSheetImageDisplay.image = selectedSongSheet;
  
  //Configure Scroller size
  self.songSheetScroller.contentSize = CGSizeMake(320, 720);
  [songSheetScroller addSubview:songSheetImageDisplay];
  [self.view addSubview:songSheetScroller];
  
  //Zoom
  self.songSheetScroller.minimumZoomScale = 0.5;
  self.songSheetScroller.maximumZoomScale = 5.0; //6.0
  
  [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
  return self.songSheetImageDisplay;
}


@end
