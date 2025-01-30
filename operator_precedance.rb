#date : 27/01/2025
#Khushi shah

#3.Operator precedences
#Operator Precedence (Addition vs. Multiplication):
result = 3 + 5 * 2
puts "Result of evaluted operation is : #{result} since the priority of the * operator is higher than the + operator"

#Using Parentheses to Alter Precedence:
modified_result = (3 + 5) * 2 
puts "Result of the modified operation is: #{modified_result}"

#Logical Operators (&& vs ||):
a = true
b = false
test = a && b || a
puts "This will print #{test} because priority of the && is higher than ||"

#Chaining Comparison Operators:
# a_test = 5 < 10 < 15
# puts a_test

a_test = 5 < 10 && 10 < 15
puts "The output of the given expression is #{a_test} since it will first evaluate < operator then &&"

#Unary Minus and Exponentiation:
unary_minus = -2**3
puts "This will print #{unary_minus} because ** operator has higher precedence than - operator" 

unary_minus = (-2)**3
puts "This will print #{unary_minus} because ** operator has higher precedence than - operator"

#Assignment and Logical Operators:
value = false and true
puts "this will return #{value} beacause and operator will return true if both condition is true otherwise false"

#Method with Multiple Operators:
def calculate
  expression = 2 * 8 / 4 + 9 - (3**2)
  puts "Result is: #{expression}"
end
calculate

#Combining Parentheses with Logical Operators:
test_result = (true || false) && false
puts "This will give the result #{test_result} because it will first evalutes the expression inside parenthesis then with && operator"

test_result_case = true || (false && false)
puts "This will give the result #{test_result_case} because it will first evalutes the expression inside parenthesis then with || operator"

