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

print(findWords(["dfdfrv","cvb","wsdf","fhtrnn","eQR"]))

