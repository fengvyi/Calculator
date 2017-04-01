# Calculator
A Calculator app written in Swift 3 of Stanford CS193P Spring 2016 Lecture .
## Requirement
* Xcode 8.2.1
* Swift 3
* IOS 10+
## About Swift
The feature of closure in Swift makes the operations look very simple, 
for example, we can reduce the code
```
    "x": Operation.BinaryOperation({(op1: Double, op2: Double) -> Double in return op1 * op2 })
```
to 
```
    "×": Operation.BinaryOperation({$0 * $1})
```
Because of the powerful type inference of swift.

## Basic Operations
```
private var operations: Dictionary<String,Operation> = [
        "π": Operation.Constant(M_PI),
        "e": Operation.Constant(M_E),
        "±": Operation.UnaryOperation({-$0}),
        "√": Operation.UnaryOperation(sqrt),
        "cos": Operation.UnaryOperation(cos),
        "×": Operation.BinaryOperation({$0 * $1}),
        "÷": Operation.BinaryOperation({$0 / $1}),
        "+": Operation.BinaryOperation({$0 + $1}),
        "−": Operation.BinaryOperation({$0 - $1}),
        "=": Operation.Equals
    ]
    
    private enum Operation {
        case Constant(Double)
        case UnaryOperation((Double)->Double)
        case BinaryOperation((Double,Double)->Double)
        case Equals
    }
```
## Screen Shot
![](https://github.com/fengvyi/Calculator/blob/master/Simulator%20Screen%20Shot.png)
## License
Copyright (c) 2017 Zefeng Song. Release under the MIT License.
