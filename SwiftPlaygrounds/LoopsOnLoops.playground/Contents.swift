//: Playground - noun: a place where people can play

import UIKit

//func beerSong() -> String {}
//    var lyrics : String = ""

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//    for number in 1...5 {
//        let newLine : String = "\n\(6 - number) bottles of beer on the wall, \(6 - number) bottles of beer. \nTake one down and pass it around, \(5 - number) bottles of beer on the wall.\n"
//        lyrics += newLine
//    }
//
//    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more. 99 bottles of beer on the wall."
//
//
//    return lyrics
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//    for number in 1...99{
//        let songLine : String = "\n\(100 - number) bottles of beer on the wall, \(100 - number) bottles of beer. \nTake one down and pass it around, \(99 - number) bottles of beer on the wall.\n"
//
//        lyrics += songLine
//    }
//        lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more. 99 bottles of beer on the wall."
//
//    return lyrics
//}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//    for number in (1...99).reversed(){
//        let songLine : String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around, \(number - 1) bottles of beer on the wall.\n"
//
//        lyrics += songLine
//    }
//    lyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more. 99 bottles of beer on the wall."
//
//    return lyrics
//}
//
//print(beerSong())
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


func cervezaSong(withThisManyBottles : Int)-> String {
    
    var cervezaLyrics : String = ""
    
    for number in (1...withThisManyBottles).reversed(){
        
        let newLinea : String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer. \nTake one down and pass it around. \(number - 1) bottles of beer on the wall\n"
        
        cervezaLyrics += newLinea
    }
    
        cervezaLyrics += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more. \(withThisManyBottles) bottles of beer on the wall."
    
    return cervezaLyrics
}

print(cervezaSong(withThisManyBottles: 99))












