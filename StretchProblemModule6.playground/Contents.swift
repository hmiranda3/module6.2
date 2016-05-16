//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    let name: String
    var favColor: String?
    var favMovie: String?
    
    init(name: String) {
        
        self.name = name
        
    }
}


let myself = Person(name: "Habib Miranda")
myself.favColor = "red"
myself.favMovie = "The Sandlot"
print("\(myself.name)'s favorite color is \(myself.favColor ?? "")")

if let favMovieUnwrapped = myself.favMovie {
    print("\(myself.name)'s favorite movie is \(favMovieUnwrapped)")
}

func checkForNil() {
    guard let movie = myself.favMovie else { // what you're checking.
        // what you waana do if it doesn't check out.
        return // this is ow we exit a function
    }
    print("my favorite movie is \(movie)")
}



