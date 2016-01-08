//
//  ViewController.m
//  webbrowserApp
//
//  Created by Himanshu on 29/10/15.
//  Copyright (c) 2015 jq software. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(webViewLoading) userInfo:nil repeats:YES];
    activity.backgroundColor = [UIColor whiteColor];
    activity.hidesWhenStopped = YES;
   
    
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Himanshu" message:@"My webpage will load soon!!!" delegate:nil cancelButtonTitle:@"thanx" otherButtonTitles:nil];
    [alert show];
    
    [super viewDidLoad];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Himanshu" message:@"My webpage did load Ha Ha!!!" delegate:nil cancelButtonTitle:@"thanx again" otherButtonTitles:nil];
    [alert show];
}
- (void)webView:(UIWebView *)webView
didFailLoadWithError:(NSError *)error{
    NSLog(@"%@",error);
}

- (IBAction)search:(id)sender {
    NSURL *url = [NSURL URLWithString:self.textfield.text];
    NSURLRequest *myrequest =[NSURLRequest requestWithURL:url];
    webview.delegate=self;
    [webview loadRequest:myrequest];
}
-(void)webViewLoading
{
    if (!webview.loading) {
        [activity stopAnimating];
    }
    else{
        [activity startAnimating];
    }
}
    
@end
