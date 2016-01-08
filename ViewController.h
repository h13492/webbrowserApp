//
//  ViewController.h
//  webbrowserApp
//
//  Created by Himanshu on 29/10/15.
//  Copyright (c) 2015 jq software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
{
    NSTimer *timer;
    IBOutlet UIActivityIndicatorView *activity;
    IBOutlet UIWebView *webview;
}


@property (strong, nonatomic) IBOutlet UITextField *textfield;
- (IBAction)search:(id)sender;



@end

