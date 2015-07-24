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
 插入排序是这样实现的：(其中一种做法)
 1、首先假设自己新建一个空列表，用于保存已 排序的有序数列（我们称之为"有序列表"）。
 2、从原数列中取出一个数，将其插入"有序列表"中，使其仍旧保持有序状态。
 3、重复2号步骤，直至原数列为空。
 *
 */
- (IBAction)insertionSort:(id)sender {
    [self getAllTextField];
    int key,j;
    
    for (int i=1; i<[_array count]; i++) {
        key = [_array[i] intValue];
        for (j=i; j>0&&[_array[i-1] intValue]>key; j--) {
            _array[j] = _array[j-1];
        }
        _array[j] = [NSString stringWithFormat:@"%d",key];
    }
    
    [self setAllTextField:_array];
}

/*
 *
 选择排序是这样实现的：
 1、设 数组内存放了n个待排数字，数组下标从1开始，到n结束。
 2、初始化i=1
 3、将上一步找到的最小元素和第i位元素交换。
 4、i++,直到i=n－1算法结束，否则回到第3步
 
 *
 */
- (IBAction)selectSort:(id)sender {
    [self getAllTextField];
    int tmp;
    for (int i=0; i<[_array count]-1; i++) {
        int min = i;
        for (int j=i+1; j<[_array count]; j++) {
            if ([_array[min] intValue]>[_array[j] intValue]) {
                min = j;
            }
        }
        if (min != i) {
            tmp = [_array[i] intValue];
            _array[i] = _array[min];
            _array[min] = [NSString stringWithFormat:@"%d",tmp];
        }
    }
    [self setAllTextField:_array];
}


/*
 *
 快排：
    实践证明， 快速排序是所有排序算法中最高效的一种。它采用了分治的思想：先保证列表的前半部分都小于后半部分，然后分别对前半部分和后半部分 排序，这样整个列表就有序了。这是一种先进的思想，也是它高效的原因。因为在 排序算法中，算法的高效与否与列表中数字间的比较次数有直接的关系，而"保证列表的前半部分都小于后半部分"就使得前半部分的任何一个数从此以后都不再跟后半部分的数进行比较了，大大减少了数字间不必要的比较。但查找数据得另当别论了。
 *
 */
- (IBAction)quickSort:(id)sender {
    [self getAllTextField];
    
    [self quickdetail:0 right:[_array count]-1];
    
    [self setAllTextField:_array];
}

- (void)quickdetail:(int)left right:(int)right {
    if (left < right) {
        int i = left,j = right, key = [_array[left] intValue];
        while (i<j) {
            while (i<j&&[_array[j] intValue]>=key)
                j--;
            if (i<j)
                _array[i++] = _array[j];
            while (i<j&&[_array[i] intValue] < key)
                i++;
            if (i<j)
                _array[j--] = _array[i];
        }
        _array[i] = [NSString stringWithFormat:@"%d",key];
        [self quickdetail:left right:i-1];
        [self quickdetail:i+1 right:right];
    }
}

@end
