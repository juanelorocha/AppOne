//
//  Screen2.h
//  AppOne
//
//  Created by juan rocha on 10/4/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Screen2 : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *CityPicture;
@property (strong, nonatomic) IBOutlet UISlider *slider;

- (IBAction)SliderMoved:(id)sender;

@end
