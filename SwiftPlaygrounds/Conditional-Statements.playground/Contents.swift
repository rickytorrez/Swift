import UIKit

func loveCalculator (yourName : String, theirName : String)-> String {
    
//    let loveScore = Int(arc4random_uniform(101))
//      You can eigher covert the random number to an Int or change the result
//      variable to a UInt32 format
    
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
        return "Your love score is \(loveScore). You love each other like Kanye loves Kanye"
    }
    else if loveScore > 40 && loveScore <= 80 {
        return "Your love score is \(loveScore). You go together like coke and mentos"
    }
    else {
        return "Your love score is \(loveScore). You'll be forever alone"
    }
}

print(loveCalculator(yourName: "Ricardo", theirName: "Random"))
