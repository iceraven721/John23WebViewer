//
//  ViewController.m
//  John23WebViewer
//
//  Created by Brennan Allen on 11/22/13.
//  Copyright (c) 2013 Brennan Allen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSURL *myURL = [NSURL URLWithString:@"http://john23.com"];
    NSURLRequest *myRequest = [NSURLRequest requestWithURL:myURL];
    [myView loadRequest:myRequest];
}
- (IBAction)StartOver:(id)sender {
    [self loadWebViewWithURL:@"http://john23.com"];
}
-(void)loadWebViewWithURL:(NSString*)urlstr{
    
    NSURLRequest *request=[NSURLRequest requestWithURL:[NSURL URLWithString:urlstr] cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30.0f];
    [myView loadRequest:request];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
