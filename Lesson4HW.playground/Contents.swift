// Lesson4HW

//Task1

func printGreetings() {
    print("Hello, world")
}

printGreetings()

func printGreetingsName(name: String) {
    print("Hello \(name)")
}

printGreetingsName(name: "Viktor")


func returnGreetingsName(name: String) -> String {
    return "Hello! \(name)"
}

returnGreetingsName(name: "Oleg")


//Task2

func returnCountString(stringOne: String, stringTwo: String) -> Int {
    return stringOne.count + stringTwo.count
}

returnCountString(stringOne: "Viktor", stringTwo: "Oleg")


//Task3

func printSquareForNumber(number: Int) {
    print("Квадрат числа \(number) равен \(number * number)")
}

printSquareForNumber(number: 5)


//Task4

let number1: Double = 5
let number2: Double = 2

func sumNumbers(num1: Double, num2: Double) {
    num1 + num2
}

sumNumbers(num1: number1, num2: number2)


func subtractionNumbers(num1: Double, num2: Double) {
    num1 - num2
}

subtractionNumbers(num1: number1, num2: number2)


func multiplicationNumbers(num1: Double, num2: Double) {
    num1 * num2
}

multiplicationNumbers(num1: number1, num2: number2)


func divisionNumbers(num1: Double, num2: Double) {
    num1 / num2
}

divisionNumbers(num1: number1, num2: number2)



//Task5

func areaOfCircle(radius: Double, numberPi: Double = 3.141592653589793) {
    numberPi * (radius * radius)
}

areaOfCircle(radius: 3)
areaOfCircle(radius: 4, numberPi: 3.14)

//func areaOfCircle(radius: Double) {
//    let numberPi: Double = 3.141592653589793
//    numberPi * (radius * radius)
//}
//
//areaOfCircle(radius: 3)


//Task6

func timesOfDay(isNight night: Bool) {
    night ? print("Сейчас ночь") : print("Сейчас день")
}

timesOfDay(isNight: true)



//Task7

func isPrimeNumber(number: Int) -> Bool {
    if (number < 0 && number > 100) == true {
        return false
    } else if number < 2 {
        return false
    } else {
        for num in 2..<number {
            if number % num == 0 {
                return false
            }
        }
    }
    return true
}

isPrimeNumber(number: 66)


//Task8

func wathSeason(mounthNumber number: Int) -> String {
    
    switch number {
    case 12,1,2:
        return "Зима"
    case 3,4,5:
        return "Весна"
    case 6,7,8:
        return "Лето"
    case 9,10,11:
        return "Осень"
    default:
        return "Номер месяца введен неправильно"
    }
}

wathSeason(mounthNumber: 11)


//Task9

func factorialNumber(number: Int) {
    var numberFactorial = 0
    numberFactorial = number
    var result = 1
    
    while numberFactorial > 0 {
        result *= numberFactorial
        numberFactorial -= 1
    }
    
    print("Факториал \(number) - \(result)")
}

factorialNumber(number: 10)


//Task10

//func subsequenceFibonacciForIndex(index: Int) -> String {
//    let leftRangeNumber = 2
//    var subsequenceFibonacci = ""
//    var firstRangeNumber = 1
//    var secondRangeNumber = 1
//    
//    subsequenceFibonacci.append("\(firstRangeNumber)")
//    subsequenceFibonacci.append("\(secondRangeNumber)")
//
//    for _ in leftRangeNumber...index {
//        let rightRangeNumber = firstRangeNumber + secondRangeNumber
//        subsequenceFibonacci.append("\(rightRangeNumber)")
//        firstRangeNumber = secondRangeNumber
//        secondRangeNumber = rightRangeNumber
//    }
//    
//    return subsequenceFibonacci
//}
//
//subsequenceFibonacciForIndex(index: 7)


func subsequenceFibonacciForIndex(index: Int) -> [Int] {
    let leftRangeNumber = 2
    var subsequenceFibonacci: [Int] = []
    var firstRangeNumber = 1
    var secondRangeNumber = 1

    subsequenceFibonacci.append(firstRangeNumber)
    subsequenceFibonacci.append(secondRangeNumber)

    for _ in leftRangeNumber...index {
        let rightRangeNumber = firstRangeNumber + secondRangeNumber
        subsequenceFibonacci.append(rightRangeNumber)
        firstRangeNumber = secondRangeNumber
        secondRangeNumber = rightRangeNumber
    }
    
    return subsequenceFibonacci
}

print(subsequenceFibonacciForIndex(index: 12))


//Task11

func sumNumbers(number: Int) -> Int {
    if number > 999 && number <= 9999 {
        let oneNumber = number / 1000
        let twoNumber = (number / 100) % 10
        let threeNumber = (number / 10) % 10
        let fourNumber = number % 10

        let sum = oneNumber + twoNumber + threeNumber + fourNumber
        
        return sum
    } else {
        return 0
    }
}

print(sumNumbers(number: 1523))
