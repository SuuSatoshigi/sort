//
//  ViewController.h
//  exercise
//
//  Created by suusatoshigi on 15/7/24.
//  Copyright (c) 2015年 suusatoshigi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *number1;
@property (weak, nonatomic) IBOutlet UITextField *number2;
@property (weak, nonatomic) IBOutlet UITextField *number3;
@property (weak, nonatomic) IBOutlet UITextField *number4;
@property (weak, nonatomic) IBOutlet UITextField *number5;

- (IBAction)bubbleSort:(id)sender;

- (IBAction)insertionSort:(id)sender;

- (IBAction)selectSort:(id)sender;

- (IBAction)quickSort:(id)sender;

@end

