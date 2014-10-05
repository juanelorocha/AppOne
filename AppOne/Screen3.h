//
//  Screen3.h
//  AppOne
//
//  Created by juan rocha on 10/4/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Screen3 : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *video;

- (IBAction)play:(id)sender;

- (IBAction)stop:(id)sender;

@end
