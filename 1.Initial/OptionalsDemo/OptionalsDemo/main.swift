//
//  main.swift
//  OptionalsDemo
//
//  Created by Genesis on 9/2/21.
//

//let myOptional: String?

//myOptional = "Genesis"

////1. Force unwrapping
//let text: String = myOptional!
//
////2. Check for nil value
//if myOptional != nil {
//    let text: String = myOptional!
//}
//
////3. Optional binding
//if let safeOptional = myOptional {
//    let text: String = safeOptional
//}


////4. Nil coalescing operator
//myOptional = nil
//let text: String = myOptional ?? "Default Value"
//print(text)



//5. Optional Chaining
struct MyOptional {
    var property = 123
    func method(){
        print("I am the struct's method")
    }
}

let myOptional: MyOptional?
myOptional = MyOptional()
print(myOptional?.property)
