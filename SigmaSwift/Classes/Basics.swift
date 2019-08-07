///# Structs

/**
 ## Variables and Constants
 These are the underpinnings of math, but in `Sigma`, they are rather simple (as of 5/8/19).
 For now, they consist of an operation, and a value.
 In a Variable
 */

/**
 The `Term` protocol is used to unite the `Variable` and `Constant` `public structs`, for use in an array.
 
 This protocol can also be used externally, to define more complex behaviour.
 */
public protocol Term {
  var operation : Operation { get }
}

/**
 A `Variable` is part of a Term, and whose value may change at any time, or can be
*/
public class Variable : Term {
  var coefficient : Int
  public var operation : Operation
  var value : String
  
  init(coefficient: Int, operation: Operation, value: String) {
    self.coefficient = coefficient
    self.operation = operation
    self.value = value
  }
}

/**
 A `Constant` is part of a Term, and consists of an `operation`; and a `value`, which will stay constant at all times.
*/
public struct Constant : Term {
  public var operation : Operation
  var value: Int
}

/**
 An `enum` to describe possible operations on a `Variable` or `Constant`.
 
 The `rawValue` of each `case` will be a `String` corresponding to that `Operation`.
 */
public enum Operation : String {
  case add = "+"
  case subtract = "-"
  
  case multiply = "*"
  case divide = "/"
}

/**
 ## Characters
 Algebra and calculus don't just use letters as variable names, they can also use letters from other languages.
 */

/**
 An `enum` to describe possible letters from the Greek alphabet
 */
public enum GreekLetter {
  case alpha
  case beta
  case gamma
  case delta
  case epsilon
  case zeta
  case eta
  case theta
  case iota
  case kappa
  case lambda
  case mu
  case nu
  case xi
  case omicron
  case pi
  case rho
  case sigma
  case tau
  case upsilon
  case phi
  case chi
  case psi
  case omega
}

/**
 ## Expressions
 */
struct Expression {
  var terms : [Term]
  var degree : Int
  var string : String
  var tex : String
  
  
}


///# Operators
