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

///**
// The `Coefficient` is a stripped-away `Variable` or `Constant`, with a single value, although this is prone to changes.
//
// For now, the `Coefficient` will only be able to hold a string value, as part of a variable. If a more complex term is required, like 2xy, then one could just multiply another variable `y` by `2x` to acheive the same result.
// */
//struct Coefficient {
//  var value: Int
//}

/**
 # Variables and Constants
 These are the underpinnings of math, but in `Sigma`, they are rather simple (as of 5/8/19).
 For now, they consist of an operation, and a value.
 In a Variable
 */

protocol Term {
  
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
