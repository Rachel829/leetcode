//: Playground - noun: a place where people can play

import UIKit


//461

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    
    let or = x ^ y;
    var count = 0;
    
    for i in 0...32 {
        count += or >> i & 1;
    }
    
    return count;
}


//print(hammingDistance(1, 4));


//476

func findComplement(_ num: Int) -> Int {
    
    var mix = 1;
    
    while mix <= num {
        mix = mix << 1;
   
    }
    let comNum = num ^ (mix - 1);
    
    return comNum;
}
//print(findComplement(5));



func findWords(_ words: [String]) -> [String] {
  let firstArr=["q","w","e","r","t","y","u","i","o","p"];
  let secondArr=["a","s","d","f","g","h","j","k","l"];
  let thirdArr = ["z","x","c","v","b","n","m"];
    var printArr :[String] = [];
    for word in words {
        var selectRow = [String]();
        var selectedStr = word;
        
        for i in word.characters{
            
            if selectRow.count == 0 {
                
                print(i)
                if(firstArr.contains(i.description.lowercased())){
                    selectRow = firstArr;
                
                }else if(secondArr.contains(i.description.lowercased())){
                    
                    selectRow = secondArr;
                    
                }else if (thirdArr.contains(i.description.lowercased())){
                   
                    selectRow = thirdArr;
                }else{
                    selectedStr = "";
                    break;
                }
            }else{
            
                 if(!selectRow.contains(i.description.lowercased())){
                    selectedStr = "";
                    break;
                    
                }
                
            }
        
        }
        
        if selectedStr.characters.count > 0 {
            printArr .append(selectedStr);
        }
    }
    return printArr;
    
}

//print(findWords(["dfdfrv","cvb","wsdf","fhtrnn","eQR"]))




// 496

func nextGreaterElement(_ findNums: [Int], _ nums: [Int]) -> [Int] {
    
    var printArr:[Int] = [];
    
    for fnumElement in findNums {
        
        let index =  nums .index(of: fnumElement);
        
        if index == nums.count - 1 {
            [printArr .append(-1)];
        
        }else{
            var subNums = nums;
            subNums .removeFirst(index!);
            var nextGreaterElement = 0;
            
            for i in subNums {
                
                if fnumElement < i {
                    nextGreaterElement = i;
                    break;
                }
            }
            
            if nextGreaterElement > 0 {
                printArr .append(nextGreaterElement);
            }else{
                printArr .append(-1);
            }
        
        }
    }
    
    return printArr;
    
}


//print(nextGreaterElement([4,1,2], [1,3,4,2]));
//print(nextGreaterElement([2,4], [1,2,3,4]));



//412

func fizzBuzz(_ n: Int) -> [String] {
    var printArr:[String] = [];
    
    for i in 1...n {
        
        if i%15 == 0 {
            printArr .append("FizzBuzz");
        }else if i%5 == 0{
            printArr .append("Buzz");
        }else if i%3 == 0{
            printArr .append("Fizz");
        }else{
            printArr .append(i.description);
        }
    }

    return printArr;
}

//print(fizzBuzz(15))



//344

func reverseString(_ s: String) -> String {
    
   return String(s.characters.reversed());
    
    
}

reverseString("Hello");



