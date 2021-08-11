import Cocoa

var greeting = "Hello, playground"


print("Hello World")
print(greeting)


var page: Int = 0
while page <= 5 {
    page += 1
    print("I'm reading page \(page).")
}


var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}
