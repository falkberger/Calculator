//
//  TestViewController.h
//  Test
//
//  Created by Tobias on 5/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController {
    
    IBOutlet UIButton *button_1;
    IBOutlet UIButton *button_2;
    IBOutlet UIButton *button_3;
    IBOutlet UIButton *button_4;
    IBOutlet UIButton *button_5;
    IBOutlet UIButton *button_6;
    IBOutlet UIButton *button_7;
    IBOutlet UIButton *button_8;
    IBOutlet UIButton *button_9;
    IBOutlet UIButton *button_0;
    IBOutlet UIButton *button_add;
    IBOutlet UIButton *button_sub;
    IBOutlet UIButton *button_mul;
    IBOutlet UIButton *button_div;
    IBOutlet UIButton *button_eq;
    IBOutlet UIButton *button_del;
    IBOutlet UITextField *text;
    
}
-(IBAction)buttonPressed:(id)sender; 
-(IBAction)calc;
-(IBAction)del;
@end
