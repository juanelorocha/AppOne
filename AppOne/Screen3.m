//
//  Screen3.m
//  AppOne
//
//  Created by juan rocha on 10/4/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import "Screen3.h"

@interface Screen3 ()

@end

@implementation Screen3

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
    
    [self.video setAllowsInlineMediaPlayback:YES];
    [self.video setMediaPlaybackRequiresUserAction:NO];
    
    [self.view addSubview:self.video];
    
    NSString* embedHTML = [NSString stringWithFormat:@"\
                           <html>\
                           <body style='margin:0px;padding:0px;'>\
                           <script type='text/javascript' src='http://www.youtube.com/iframe_api'></script>\
                           <script type='text/javascript'>\
                           function onYouTubeIframeAPIReady()\
                           {\
                           ytplayer=new YT.Player('playerId',{events:{onReady:onPlayerReady}})\
                           }\
                           function onPlayerReady(a)\
                           { \
                           a.target.playVideo(); \
                           }\
                           </script>\
                           <iframe id='playerId' type='text/html' width='%d' height='%d' src='http://www.youtube.com/embed/%@?enablejsapi=1&rel=0&playsinline=1&autoplay=1' frameborder='0'>\
                           </body>\
                           </html>", 300, 200, @"uWCNUQZvU7M"];
    [self.video loadHTMLString:embedHTML baseURL:[[NSBundle mainBundle] resourceURL]];

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

- (IBAction)play:(id)sender {
    self.video = [[UIWebView alloc] initWithFrame:CGRectMake(10, 10,300, 200)];
    [self.video setAllowsInlineMediaPlayback:YES];
    [self.video setMediaPlaybackRequiresUserAction:NO];
    
    [self.view addSubview:self.video];
    
    NSString* embedHTML = [NSString stringWithFormat:@"\
    <html>\
    <body style='margin:0px;padding:0px;'>\
    <script type='text/javascript' src='http://www.youtube.com/iframe_api'></script>\
    <script type='text/javascript'>\
    function onYouTubeIframeAPIReady()\
    {\
    ytplayer=new YT.Player('playerId',{events:{onReady:onPlayerReady}})\
    }\
    function onPlayerReady(a)\
    { \
    a.target.playVideo(); \
    }\
    </script>\
    <iframe id='playerId' type='text/html' width='%d' height='%d' src='http://www.youtube.com/embed/%@?enablejsapi=1&rel=0&playsinline=1&autoplay=1' frameborder='0'>\
    </body>\
    </html>", 300, 200, @"JW5meKfy3fY"];
    [self.video loadHTMLString:embedHTML baseURL:[[NSBundle mainBundle] resourceURL]];
}

- (IBAction)stop:(id)sender {
}
@end
