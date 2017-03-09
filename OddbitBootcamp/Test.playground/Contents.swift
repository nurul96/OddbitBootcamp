//: Playground - noun: a place where people can play

import UIKit

typealias tesTupple = (id: Int, nama: String)

var str: tesTupple = (id: 1, nama: "Nurul")

print(str.id)
print(str.nama)

var str2: String?
var str3: String = "String 3"
var status: Bool?

if let newStr2 = str2, let newStatus = status, newStatus == true {
    str3 = newStr2
    print("String 3: \(str3)")
}

func fungsi(str: String?) -> String{
    
    guard let str = str else {
        return ""
    }
    
    defer {
        print("masuk ke fungsi")
    }
    
    return str
}

print(fungsi(str: nil))

print(str.nama )
print("\(str.id), \(str2)")

// MARK: - Array
var names : [String] = ["Nurul",
                        "Bayu"]
print(names[0])

var anyArray = ["Nurul", 1, true] as [Any]

// MARK: - Dictionary
var numberOfLegs: [String: Int] = ["ant" : 6,
                    "snake": 0,
                    "cat": 4]
print(numberOfLegs["snake"])
numberOfLegs["snake"] = 1000
print(numberOfLegs["snake"])

// - Looping

for i in 1...20{
    
    if i == 10{
        break
    }
    
    if i % 2 == 0{
        continue
    }
    
    print(i)
}

for (index, value) in anyArray.enumerated(){
    print("\(index), \(value)")
}

for value in numberOfLegs{
    print("\(value.key), \(value.value)")
}

// - Struct

struct Movie{
    var id: Int
    var title: String
    var genre: String
    var genap: Bool
    
    init(id: Int, title: String, genre: String) {
        self.id = id
        self.title = title
        self.genre = genre
        
        self.genap = id % 2 == 0 ? true : false
        
    }
}

let movies: [Movie] = [
    Movie(id: 1, title: "Movie 1", genre: "Horror"),
    Movie(id: 2, title: "Movie 2", genre: "Horror")
]

print(movies)

// - Enum
enum Warna{
    case Putih
    case Merah
    case Hitam
    
    var desc: String{
        switch self {
        case .Merah:
            return "Ini warna merah"
        default:
            return "Warna lain"
        }
    }
    
}

var warna: Warna = .Merah

print(warna.desc)
