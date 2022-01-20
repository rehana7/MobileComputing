import UIKit

var greeting = "Hello, playground"

print("Hii",10,12.25)

//string interpolation





var programmingLanguage = "Swift"
print("My favorite programming language is \(programmingLanguage)")

var name = "Rehana"
print("Hello,\(name)!")
var grade = 90
//Hello, Rehana ! you got the A in ios course.

print ("Hello,\(name)! you got the \(grade) in ios course.")


var age = 27
print("your age is \(age) and when you tripled it will be \(age*3)")

print("""
      Hello
      world!
      """)
print ("Hello All,\rWelcome to Swift programming")

let  welcomeMessage : String = "Hello!"
  print(welcomeMessage , "All")

print("Welcome to Swift Programming")
print("Spring 2022")
print("*************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Spring 2022")


var na = "Rehana"
print("Hello,\(name)!", terminator: "$$")
var gr = 90
//Hello, Rehana ! you got the A in ios course.

print (" you got the \(gr) in ios course.")


print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is", terminator: ":")
print(1,2,3,4,5,6, separator: "-")


var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)

let pi = 3.14

print(pi)

var ag : Int = 23
age = age * 2
print(age)

var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")

var course1 = "iOS"
var course2 = "Java"
print(course1,course2)
print(course1,"-",course2)

print(course1, course2, separator : "-")

print(10,20,30," ", terminator: "-")
    print(12.5,15.5)
    print("hello")

var httpError  = (errorCode : 404  , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )

var names = ("John","Smith")
var fName = names.0
var lName = names.1
print(fName , terminator : ",")
print(lName)


var origin = (x : 0 , y : 0)
var point = origin
print(point)

let city = (name : "Maryville" , population : 11_000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))


var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")


var cricketKit = ("handGloves","helmet",("bat","ball"),("drinks","food","medicines"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)
print(cricketKit.3.2)
