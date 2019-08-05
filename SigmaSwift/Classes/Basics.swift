enum Operation : String {
  case add = "+"
  case subtract = "-"
  
  case multiply = "*"
  case divide = "/"
}

struct Variable {
  var operation : Operation?
  var value : String
}

struct Constant {
  var operation : Operation?
  var value: Int
}
