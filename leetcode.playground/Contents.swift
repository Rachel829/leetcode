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

//
//
//func findWords(_ words: [String]) -> [String] {
//  var firstArr=["q","w","e","r","t","y","u","i","o","p"];
//  var secondArr=["a","s","d","f","g","h","j","k","l"];
//  var thirdArr = ["z","x","c","v","b","n","m"];
//    var printArr : [Array<String>] = [];
//    
//    for word in words {
//        NSArray *selectRow =[String]();
//        
//        word = word.lowercased();
//        
//        for i in 0...word.characters.count{
//           
//            arr = [];
//            if i = 0 {
//              words
//                
//            }else{
//            
//            }
//            
//        
//        }
//    }
//    
//    
//}


