# date: 23/01/2025
# Khushi Shah

#1. Proc and Lambda
#Basic Proc Usage:
puts "Enter number: "
num = gets.to_i
square = Proc.new {|num| puts "Square of the number is: #{num ** 2}"}
square.call(num)

#Basic Lambda Usage:
puts "Enter String: "
str = gets.to_s
my_str = lambda{|str| print "String is : #{str}Length of the String is: #{str.length}\n"}
my_str.call(str)

#Proc vs. Lambda (Control Flow):
my_lambda = -> { return 1 }
puts "Lambda result: #{my_lambda.call}"

#my_proc = Proc.new { return 1 }
#puts "Proc result: #{my_proc.call}"

# def call_proc
#     puts "Before proc"
#     proc_instance = Proc.new { return 2 }
#     proc_instance.call
#     puts "After proc"
#   end
# p call_proc


def call_lambda()
  puts "Before Return"
  lambda_instance = -> {return 2}
  lambda_instance.call
  puts "After Return"
end
p call_lambda

#Proc as a Method Argument:
def call_proc_with_arg(proc)
    proc.call
end
proc_with_arg = Proc.new {puts "Calling proc as a method"}
call_proc_with_arg (proc_with_arg)

#Lambda Returning a Value:
puts "Enter first number: "
num1 = gets.to_i
puts "Enter another number: "
num2 = gets.to_i
sum_lambda = lambda do |num1 , num2|
  sum = num1 + num2
  puts "sum of two numbers is: #{sum}"
  return sum
end
sum_lambda.call(num1,num2)