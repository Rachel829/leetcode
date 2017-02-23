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

    NSArray *arr = @[@"retcff",@"dgfgg",@"cvbvcb",@"eteruiot",@"fvgb",@"qaqc",@"sdfdfg"];
    
   NSArray *answerArr = [self getOneRow:arr];
    
    NSLog(@"%@",answerArr);
}


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
