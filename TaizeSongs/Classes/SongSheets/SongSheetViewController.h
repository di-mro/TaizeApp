//
//  SongSheetViewController.h
//  TaizeSongs
//
//  Created by Mary Rose Oh on 3/28/13.
//  Copyright (c) 2013 Dungeon Innovations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SongSheetViewController : UIViewController

@property int index;
@property (nonatomic, retain) NSMutableArray *songEntries;
@property (nonatomic, retain) NSMutableArray *songImages;
@property (nonatomic, retain) UIImage *songSheetImage;


@end
