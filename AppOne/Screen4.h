//
//  Screen4.h
//  AppOne
//
//  Created by juan rocha on 10/4/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Screen4 : UIViewController
//images
@property (strong, nonatomic) IBOutlet UIImageView *imgEquipo;

//labels
@property (strong, nonatomic) IBOutlet UILabel *lblMarcador;
@property (strong, nonatomic) IBOutlet UISegmentedControl *scEquiposOutlet;

//actions

- (IBAction)btnMenosGoles:(id)sender;
- (IBAction)btnMasGoles:(id)sender;
- (IBAction)scEquipos:(id)sender;

@end
