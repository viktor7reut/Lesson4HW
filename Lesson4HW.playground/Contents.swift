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

func areaOfCircle(radius: Double) {
    let numberPi: Double = 3.141592653589793
    numberPi * (radius * radius)
}

areaOfCircle(radius: 3)


//Task6

func timesOfDay(isNight night: Bool) {
    night ? print("Сейчас ночь") : print("Сейчас день")
}

timesOfDay(isNight: true)



//Task7

func isPrimeNumber(number: Int) -> Bool {
    if number < 0 || number > 100 {
        return false
    }
    
    if number < 2 {
        return false
    }
    
    for num in 2..<number {
        if number % num == 0 {
            return false
        }
    }
    
    return true
}

isPrimeNumber(number: 4)



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

