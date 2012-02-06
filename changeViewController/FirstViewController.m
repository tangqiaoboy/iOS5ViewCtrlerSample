//
//  FirstViewController.m
//  changeViewController
//
//  Created by marcus wang on 12-1-11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    debugMethod();
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    debugMethod();
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    debugMethod();
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    debugMethod();
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    debugMethod();
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    debugMethod();
}

- (void)willMoveToParentViewController:(UIViewController *)parent {
    debugMethod();
}

- (void)didMoveToParentViewController:(UIViewController *)parent {
    debugMethod();
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
