//
//  MainViewController.m
//  changeViewController
//
//  Created by marcus wang on 12-1-11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

#import "FirstViewController.h"

#import "SecondViewController.h"

#import "ThirdViewController.h"

@implementation MainViewController

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
}

#pragma mark - View lifecycle

FirstViewController *firstViewController;
SecondViewController *secondViewController;
ThirdViewController *thirdViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    firstViewController=[[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    [self addChildViewController:firstViewController];
    
    secondViewController=[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self addChildViewController:secondViewController];
    
    thirdViewController=[[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    [self addChildViewController:thirdViewController];
    
    [contentView addSubview:firstViewController.view];
    [contentView addSubview:secondViewController.view];
    [contentView addSubview:thirdViewController.view];
    
    currentViewController=thirdViewController;
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(IBAction)onClickbutton:(id)sender
{
    if ((currentViewController==firstViewController&&[sender tag]==1)||(currentViewController==secondViewController&&[sender tag]==2) ||(currentViewController==thirdViewController&&[sender tag]==3) ) {
        return;
    }
    UIViewController *oldViewController=currentViewController;
    switch ([sender tag]) {
        case 1:
        {
            NSLog(@"留言及回复");
            [self transitionFromViewController:currentViewController toViewController:firstViewController duration:1 options:UIViewAnimationOptionTransitionCurlUp animations:^{
            }  completion:^(BOOL finished) {
                if (finished) {
                    currentViewController=firstViewController;
                }else{
                    currentViewController=oldViewController;
                }
            }];
}
            break;
        case 2:
        {
            NSLog(@"生日提醒");
            [self transitionFromViewController:currentViewController toViewController:secondViewController duration:1 options:UIViewAnimationOptionTransitionCurlDown animations:^{
                
            }  completion:^(BOOL finished) {
                if (finished) {
                  currentViewController=secondViewController;
                }else{
                    currentViewController=oldViewController;
                }
            }];
        }
            break;
        case 3:
        {
            NSLog(@"好友申请");
            [self transitionFromViewController:currentViewController toViewController:thirdViewController duration:1 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
                
            }  completion:^(BOOL finished) {
                if (finished) {
                     currentViewController=thirdViewController;
                }else{
                    currentViewController=oldViewController;
                }
            }];
        }
            break;
        default:
            break;
    }
}
@end
