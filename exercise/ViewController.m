//
//  ViewController.m
//  exercise
//
//  Created by suusatoshigi on 15/7/24.
//  Copyright (c) 2015年 suusatoshigi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic)NSMutableArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void) getAllTextField {
    _array = [[NSMutableArray alloc] init];
    [_array addObject:[_number1 text]];
    [_array addObject:[_number2 text]];
    [_array addObject:[_number3 text]];
    [_array addObject:[_number4 text]];
    [_array addObject:[_number5 text]];
}

- (void) setAllTextField : (NSMutableArray*)array{
    _number1.text = array[0];
    _number2.text = array[1];
    _number3.text = array[2];
    _number4.text = array[3];
    _number5.text = array[4];
}

/*
 *
 冒泡排序是这样实现的：
 1、从列表的第一个数字到倒数第二个数字，逐个检查：若某一位上的数字大于他的下一位，则将它与它的下一位交换。
 2、重复1号步骤，直至再也不能交换。
 *
 */
- (IBAction)bubbleSort:(id)sender {
    [self getAllTextField];
    int t = 0;
    for (int i=0; i<[_array count]-1; i++) {
        for (int j=i+1; j<[_array count]; j++) {
            if ([_array[i] intValue]>[_array[j] intValue]) {
                t = [_array[i] intValue];
                _array[i] = _array[j];
                _array[j] = [NSString stringWithFormat:@"%d",t];
            }
        }
    }
    
    [self setAllTextField:_array];
}

/*
 *
 插入排序是这样实现的：
 1、首先新建一个空列表，用于保存已 排序的有序数列（我们称之为"有序列表"）。
 2、从原数列中取出一个数，将其插入"有序列表"中，使其仍旧保持有序状态。
 3、重复2号步骤，直至原数列为空。
 *
 */
- (IBAction)insertionSort:(id)sender {
   
}



@end
