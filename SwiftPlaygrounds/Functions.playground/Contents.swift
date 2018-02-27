// Creates the function
//func getMilk (){
//    print("go to the shops")
//    print("buy two gallons of milk")
//    print("pay 2 dollars")
//    print("come home")
//}

//func getMilk(howManyMilkCartons : Int){
//        print("go to the shops")
//        print("buy \(howManyMilkCartons) gallons of milk")
//
//    let priceToPay = howManyMilkCartons * 2
//
//        print("pay \(priceToPay) dollars")
//        print("come home")
//}

func getMilk(howManyMilkCartons : Int , howMuchMoneyRobotWasGiven : Int)-> Int{
        print("go to the shops")
        print("buy \(howManyMilkCartons) gallons of milk")

        let priceToPay = howManyMilkCartons * 2

        print("pay \(priceToPay) dollars")
        print("come home")
    
        let change = howMuchMoneyRobotWasGiven - priceToPay
    
    return change
}

// Calls the function
var amountOfChange = getMilk(howManyMilkCartons: 1, howMuchMoneyRobotWasGiven: 10)
print ("Hello human, here's your $\(amountOfChange) change")











