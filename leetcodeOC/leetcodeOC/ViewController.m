//
//  ViewController.m
//  leetcodeOC
//
//  Created by Rachel Lee on 2017/2/23.
//  Copyright © 2017年 Enorth.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"%@",[self getNextGreaterElementWith:@[@"2",@"4"] in:@[@"1",@"2",@"3",@"4"]]);
}




//496
-(NSArray *)getNextGreaterElementWith:(NSArray *) arr1  in:(NSArray *)arr2{
    

    NSMutableArray *printArr = [NSMutableArray arrayWithCapacity:0];
    
    for (NSString *arrElement in arr1) {
        
        NSInteger index = [arr2 indexOfObject:arrElement];
        
        if (index == arr2.count - 1 ) {
            
            [printArr addObject:@"-1"];
            
        }else{
        
            
            NSArray *subArr2 = [arr2 subarrayWithRange:NSMakeRange(index, arr2.count - index - 1)];
            NSString *nextStr;
            for (NSString *subStr in subArr2) {
                
                if ([arrElement integerValue] < [subStr integerValue]) {
                    nextStr = subStr;
                    break;

                }
            }
            
            if (!nextStr) {
                nextStr = @"-1";
            }
            
            [printArr addObject:nextStr];
            


        }
      
    }
    
    return printArr;

}


-(void)test500{
    
    NSArray *arr = @[@"retcff",@"dgfgg",@"cvbvcb",@"eteruiot",@"fvgb",@"qaqc",@"sdfdfg"];
    NSArray *answerArr = [self getOneRow:arr];
    NSLog(@"%@",answerArr);
    
    
}


//500
-(NSArray *)getOneRow:(NSArray *)words{

    NSArray *firstRow = @[@"q",@"w",@"e",@"r",@"t",@"y",@"u",@"i",@"o",@"p"];
    NSArray *secondRow =@[@"a",@"s",@"d",@"f",@"g",@"h",@"j",@"k",@"l"];
    NSArray *thirdRow = @[@"z",@"x",@"c",@"v",@"b",@"n",@"m"];
    
    NSMutableArray *printArr = [NSMutableArray arrayWithCapacity:0];
    
    for (NSString *word in words) {
        
        NSArray *selectRow = nil;
        NSString *selectWord = word;

        for (int i = 0; i < word.length; i++) {
            
            
            NSString *cha = [word substringWithRange:NSMakeRange(i, 1)].lowercaseString;

            if (selectRow == nil) {
                
                if ([firstRow containsObject:cha]) {
                    selectRow = firstRow;
                }else if([secondRow containsObject:cha]) {
                    selectRow = secondRow;
                }else if([thirdRow containsObject:cha]){
                    selectRow = thirdRow;
                }else{
                    selectWord = nil;
                    break;
                };
            }else{
            
                if (![selectRow containsObject:cha]) {
                    selectWord = nil;

                    break;
                }
            
            }
          
 
        }
        if (selectWord) {
            [printArr addObject:selectWord];
        }

        
    }
        
    return printArr;
    
}


@end
