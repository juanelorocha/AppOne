//
//  ViewController.m
//  AppOne
//
//  Created by juan rocha on 9/29/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import "Screen1.h"

@interface Screen1 ()

@end

@implementation Screen1

NSArray *myAge;
NSArray *myAgeP;
NSArray *colors;
int AgeIndex=0;
int ColorIndex=0;
int BgIndex=0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //colors= [NSArray arrayWithObjects: @"mYellow",@"mRed",@"mBlue",@"mGreen",@"mOrange", nil];
    myAge= [NSArray arrayWithObjects: @"30",@"25",@"20",@"15",@"10", nil];
    myAgeP= [NSArray arrayWithObjects: @"30.jpg",@"25.jpg",@"20.jpg",@"15.jpg",@"10.jpg", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Color:(id)sender {
    ColorIndex++;
    switch (ColorIndex%5) {
        case 0:
            self.Name.textColor                   = [UIColor mBlue];
            break;
        case 1:
            self.Name.textColor                   = [UIColor mGreen];
            break;
        case 2:
            self.Name.textColor                   = [UIColor mYellow];
            break;
        case 3:
            self.Name.textColor                   = [UIColor mOrange];
            break;
        case 4:
            self.Name.textColor                   = [UIColor mRed];
            break;
        default:
            break;
    }
}

- (IBAction)Background:(id)sender {
    BgIndex++;
    switch (BgIndex%5) {
        case 0:
            self.view.backgroundColor                   = [UIColor mBlue];
            break;
        case 1:
            self.view.backgroundColor                   = [UIColor mGreen];
            break;
        case 2:
            self.view.backgroundColor                   = [UIColor mYellow];
            break;
        case 3:
            self.view.backgroundColor                   = [UIColor mOrange];
            break;
        case 4:
            self.view.backgroundColor                   = [UIColor mRed];
            break;
        default:
            break;
    }
}

- (IBAction)Image:(id)sender {
    AgeIndex++;
    self.Age.text=([myAge objectAtIndex: AgeIndex%5]);
    self.Picture.image= [UIImage imageNamed:[myAgeP objectAtIndex: AgeIndex%5]];
    self.Picture.contentMode= UIViewContentModeScaleAspectFill;
}
@end
