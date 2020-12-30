import UIKit


//1. Написать функцию, которая определяет, четное число или нет
//Создание переменной
var value: Int = 22
func TransformtToBool (_ n: Int) -> Bool {
    //Условия вычисления четных или нечетных чисел
    if n % 2 == 0 && n != 0 {
        //Функция возврщения логического ответа (Да/Нет)
        return true
    } else {
        return false
    }
}
//Вывод получившегося ответа - Print(Название функции(Переменная))
print(TransformtToBool(value))




//Пример с использованием коллекции Array сортировки чисел (Массивы из нескольких значений):

var numbers = [1, 2, 3, 4, 5]
for sorting in numbers {
    if sorting % 2 == 0 {
        print("\(sorting) четное число")
    } else {
        print("\(sorting) нечетное число")
    }
}




//2. Написать функцию, которая определит делится ли число без остатка на 3.

 //Создание переменной
 var value: Int = 13
 func TransformtToBool (_ n: Int) -> String {
     //Условия вычисления четных или нечетных чисел.
     if n % 3 == 0 && n != 0 {
         //Функция возврщения ответа с описанием.
         return ("делится на 3 без остатка")
     } else {
         return ("делится на 3 с остатком")
     }
 }
 //Вывод получившегося ответа - Print(Название функции(Переменная))
 print(TransformtToBool(value))

 


//Пример с использованием коллекции Array и сортировки чисел (Массивы из нескольких значений):
var numbers = [1, 2, 3, 4, 5]
for sorting in numbers {
    if sorting % 3 == 0 {
        print("\(sorting) делится на 3 без остатка")
    } else {
        print("\(sorting) делится на 3 с остатком")
    }
}




var numbers: Array<Int> = []
for sorting in 1...100{
    if sorting % 3 == 0 {
        print("\(sorting) делится на 3 без остатка")
    } else {
        print("\(sorting) делится на 3 с остатком")
    }
}


 
 //3. Создать возврастающий массив из 100 чисел.
 
 Массив данных от 1 до 100 последовательно(Используем коллекцию Array -  Массив)
 
 
var oneHundred: Array<Int> = []
for i in 1...100{
    oneHundred.append(i)
}
print(oneHundred)




 
//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var oneHundred: Array<Int> = []
for i in 1...100{
    oneHundred.append(i)
}
    var  toDelete = oneHundred.filter {$0 % 2 != 0 && $0 % 3 == 0}
    
    print(oneHundred)
 



//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
func fibAdd(_ arr: [Decimal]) -> ([Decimal]) {
    var newArr: [Decimal] = arr
    
    if newArr.count >= 2 {
        newArr.append(newArr[newArr.count - 1] + newArr[newArr.count - 2])
    } else if newArr.count == 0 {
        newArr.append(0)
    } else if newArr.count == 1 {
        newArr.append(1)
    }
    return newArr
    }

var testArray: [Decimal] = []
var i = 0
while i < 100 {
    testArray = fibAdd(testArray)
    i += 1
}
print(testArray)
print(testArray.count)



 
 
6. Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.
 
func AnusEbany (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
func PrimeArray () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if AnusEbany (num: i) {
            results.append(i)
        }
        i += 1
    }
    
    return results
}
print (PrimeArray())

