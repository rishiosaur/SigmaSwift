/**
An `enum` to describe possible operations on a `Variable` or `Constant`.
 
The `rawValue` of each `case` will be a `String` corresponding to that `Operation`.
*/
enum Operation : String {
  case add = "+"
  case subtract = "-"
  
  case multiply = "*"
  case divide = "/"
}

/**
 # Variables and Constants
 These are the underpinnings of math, but in `Sigma`, they are rather simple (as of 5/8/19).
 For now, they consist of an operation, and a value.
 In a Variable
 */

/**
 The `Term` protocol is used to unite the `Variable` and `Constant` `structs`, for use in an array.
 
 This protocol can also be used externally, to define more complex behaviour.
 */
protocol Term {
  var operation : Operation? { get }
}

/// A `Variable` is part of a Term, and consists of an `operation`; and a `value`, which may change at any time.
struct Variable : Term {
  
  var operation : Operation?
  var value : String
}

/// A `Constant` is part of a Term, and consists of an `operation`; and a `value`, which will stay constant at all times.
struct Constant : Term {
  var operation : Operation?
  var value: Int
}
