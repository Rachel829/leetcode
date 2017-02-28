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
    

}


- (void)test344 {
    
    NSLog(@"%@",[self reverseString:@"intent"]);

}



//344
-(NSString *)reverseString:(NSString *)str{
    
    NSUInteger i = 0;
    NSUInteger j = str.length - 1;
    unichar characters[str.length];
    while (i < j) {
        characters[j] = [str characterAtIndex:i];
        characters[i] = [str characterAtIndex:j];
        i ++;
        j --;
    }
    if(i == j)
        characters[i] = [str characterAtIndex:i];
   
    return [NSString stringWithCharacters:characters length:str.length];
>>>>>>> 6f46ed39b23ff28d5ef23971fb5e8ae1d59aec22
}



-(void)test412{

    NSLog( @"%@",[self fizzBuzzWith:15]);

}

//412

-(NSArray *)fizzBuzzWith:(NSInteger)integer{

    NSMutableArray *printArr = [NSMutableArray arrayWithCapacity:0];
    for (int i = 1; i <= integer; i++) {
        if (i%15 == 0) {
            [printArr addObject:@"FizzBuzz"];
           
        }else if (i%5 == 0) {
            [printArr addObject:@"Buzz"];
        }else if(i%3 == 0){
            
            [printArr addObject:@"Fizz"];

        }else{
                
                [printArr addObject:@(i)];
                
        }
        
        
    }
    return printArr;
    

}


-(void)test496{

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
