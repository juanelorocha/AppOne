//
//  ViewController.h
//  AppOne
//
//  Created by juan rocha on 9/29/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//Labels
@property (strong, nonatomic) IBOutlet UILabel *Name;

@property (strong, nonatomic) IBOutlet UILabel *Age;

//Images
@property (strong, nonatomic) IBOutlet UIImageView *Picture;

//Buttons


//Actions
- (IBAction)Color:(id)sender;

- (IBAction)Background:(id)sender;

- (IBAction)Image:(id)sender;

@end
