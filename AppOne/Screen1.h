//
//  ViewController.h
//  AppOne
//
//  Created by juan rocha on 9/29/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import <UIKit/UIKit.h>

#define mOrange       colorWithRed:240/255.0 green:136/255.0 blue:50/255.0 alpha:1.0
#define mYellow       colorWithRed:240/255.0 green:237/255.0 blue:50/255.0 alpha:1.0
#define mGreen       colorWithRed:91/255.0 green:240/255.0 blue:50/255.0 alpha:1.0
#define mBlue       colorWithRed:50/255.0 green:192/255.0 blue:240/255.0 alpha:1.0
#define mRed       colorWithRed:240/255.0 green:60/255.0 blue:50/255.0 alpha:1.0

@interface Screen1 : UIViewController
//Labels
@property (strong, nonatomic) IBOutlet UILabel *Name;

@property (strong, nonatomic) IBOutlet UILabel *Age;

//Images
@property (strong, nonatomic) IBOutlet UIImageView *Picture;

//Actions
- (IBAction)Color:(id)sender;

- (IBAction)Background:(id)sender;

- (IBAction)Image:(id)sender;

@end
