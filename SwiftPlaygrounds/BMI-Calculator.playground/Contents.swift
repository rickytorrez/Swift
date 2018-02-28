import UIKit

func bmiCalculator (weight : Double, height : Double) -> String {
    let bmi = weight / pow(height, 2)
    
    let shortenedBMI = String(format: "%.2f", bmi)
    
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "you are overweight"
    }
    else if bmi > 18.5 {
        interpretation = "you have a normal weight"
    }
    else {
        interpretation = "you are underweight"
    }
    return "Your BMI is \(shortenedBMI) and \(interpretation)"
}

var bmiResult = bmiCalculator(weight: 63, height: 1.8)
print (bmiResult)

//print(bmiResult)

func bmiCalcImperialUnits(weightInPounds: Double, heightInFeet: Double, heightInInches: Double){
    
    let weightInKilos = weightInPounds * 0.45359237
    
    let totalInches = heightInFeet * 12 + heightInFeet
    
    let heightInMeters = totalInches * 0.0254
    
    let bmi = weightInKilos / pow(heightInMeters, 2)
}

bmiCalcImperialUnits(weightInPounds: 180, heightInFeet: 6, heightInInches: 0)

