#date :09/01/2025
#Khushi shah

#lambda
str =  -> {puts "Hello world"}
str.call
str.()
str[]
str.===

number = ->(a) {puts a*20}
number.call(20)

#procs
my_procs =Proc.new{|x| puts "value is #{x}"}
my_procs.call(10)

#lambda vs procs
t = Proc.new { |x,y| puts "I don't care about arguments!" } # I don't care about arguments!
t.call

#t= ->(a,b) { puts "hello"} #lambda_procs.rb:21:in `block in <main>': wrong number of arguments (given 0, expected 2) (ArgumentError)
       # from lambda_procs.rb:22:in `<main>'
t.call

#Procs return from the current method, while lambdas return from the lambda itself.
 my_lambda = -> { return 1 }
 puts "Lambda result: #{my_lambda.call}"
# raise exception
 my_proc = Proc.new { return 1 }
 puts "Proc result: #{my_proc.call}"

#proc inside method
def call_proc
    puts "Before proc"
    my_proc = Proc.new { return 2 }
    my_proc.call
    puts "After proc"
  end
  p call_proc

puts "########################################"
def call_proc2(my_proc1)
    count =20
    my_proc1.call
end
count = 10
my_proc1 = Proc.new { puts count }
call_proc2(my_proc1)


puts "########################################"
def call_proc1
    my_proc2 = Proc.new {|x| puts "value is #{x}"}
    my_proc2.call(10)
end
call_proc1()