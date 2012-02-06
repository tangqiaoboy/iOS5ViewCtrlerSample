//
//  MainViewController.h
//  changeViewController
//
//  Created by marcus wang on 12-1-11.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
{

    IBOutlet UIView *contentView;

    IBOutlet UIButton *firstButton;

    IBOutlet UIButton *secondButton;

    IBOutlet UIButton *thirdButon;

    UIViewController *currentViewController;

}

-(IBAction)onClickbutton:(id)sender;

@end
