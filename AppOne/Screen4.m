//
//  Screen4.m
//  AppOne
//
//  Created by juan rocha on 10/4/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import "Screen4.h"

@interface Screen4 ()

@end

int score=0;

@implementation Screen4

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnMenosGoles:(id)sender {
    score--;
    self.lblMarcador.text=[NSString stringWithFormat:@"%i" , score%10];
}

- (IBAction)btnMasGoles:(id)sender {
    score++;
    self.lblMarcador.text=[NSString stringWithFormat:@"%i" , score%10];
}

- (IBAction)scEquipos:(id)sender {
    if (self.scEquiposOutlet.selectedSegmentIndex==0) {
        self.imgEquipo.image = [UIImage imageNamed: @"atlas.jpg"];
    } else {
        self.imgEquipo.image = [UIImage imageNamed: @"chivas.jpg"];
    }
}
@end
