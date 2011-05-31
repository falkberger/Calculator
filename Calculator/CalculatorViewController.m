//
//  TestViewController.m
//  Test
//
//  Created by Tobias on 5/25/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

-(IBAction)buttonPressed:(id)sender {
    text.text = [NSString stringWithFormat:@"%@%@", text.text, [(UIButton *)sender currentTitle]];
}

-(IBAction)calc {
    NSString *exp = [text text];
    int res;
   
    
    NSArray *values = [exp componentsSeparatedByCharactersInSet:
                        [NSCharacterSet characterSetWithCharactersInString:@"+-*/"]
                        ];
    NSMutableArray *ops = [[NSMutableArray alloc] init]; 
    
    NSNumberFormatter * f = [[NSNumberFormatter alloc] init];

    
    for (int i=0; i < [exp length]; i++) {

        NSString *ichar  = [NSString stringWithFormat:@"%c", [exp characterAtIndex:i]];

        
        if ([f numberFromString: ichar] == nil) {
           		[ops addObject:ichar];
        }
        
    }
     NSLog(@"%@",ops);
     NSLog(@"%@",values);
    
   
    
    int x = 0;
     for (int i = 0; i < [values count]; i++) {
         
          NSString *op = [ops objectAtIndex:x];
         
         if ([op isEqualToString:@"+"]) {
             if (i == 0) {
                 res =  [[values objectAtIndex:i] intValue] + [[values objectAtIndex:++i] intValue];
             } else {
                  res =  res + [[values objectAtIndex:i] intValue];
             }
            
         } else if ([op isEqualToString:@"-"]) {
             if (i == 0) {
                 res =  [[values objectAtIndex:i] intValue] - [[values objectAtIndex:++i] intValue];
             } else {
                 res =  res - [[values objectAtIndex:i] intValue];
             }
             
         } else if ([op isEqualToString:@"*"]) {
             if (i == 0) {
                 res =  [[values objectAtIndex:i] intValue] * [[values objectAtIndex:++i] intValue];
             } else {
                 res =  res * [[values objectAtIndex:i] intValue];
             }
             
         } else if ([op isEqualToString:@"/"]) {
             if (i == 0) {
                 res =  [[values objectAtIndex:i] intValue] / [[values objectAtIndex:++i] intValue];
             } else {
                 res =  res / [[values objectAtIndex:i] intValue];
             }
         }
     }
    text.text = [NSString stringWithFormat:@"%d", res];
    [f release];
    [ops release];
    
}

-(IBAction)del {
    if ([text.text length] > 0) {
        text.text = [text.text substringToIndex:[text.text length] - 1];
    }
    
}
@end
