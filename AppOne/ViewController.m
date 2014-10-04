//
//  ViewController.m
//  AppOne
//
//  Created by juan rocha on 9/29/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSArray *myAge;
NSArray *myAgeP;
int AgeIndex=0;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Color:(id)sender {
    //self.Name.textColor
}

- (IBAction)Background:(id)sender {
}

- (IBAction)Image:(id)sender {
    myAge= [NSArray arrayWithObjects: @"30",@"25",@"20",@"15",@"10", nil];
    myAgeP= [NSArray arrayWithObjects: @"30.jpg",@"25.jpg",@"20.jpg",@"15.jpg",@"10.jpg", nil];
    AgeIndex++;
    self.Age.text=([myAge objectAtIndex: AgeIndex%5]);
    self.Picture.image= [UIImage imageNamed:[myAgeP objectAtIndex: AgeIndex%5]];
    self.Picture.contentMode= UIViewContentModeScaleAspectFill;
    self.Picture.sizeToFit=;
    //self.imgWelcome.image = [UIImage imageNamed: @"imgCantinflas.jpg"];
}
@end
