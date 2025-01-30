#date : 27/01/2025
#Khushi Shah

#2. Blocks and yield
#Using yield:
def print_num
  yield 20
end
print_num{|num| print "Number is : #{num}"}

#Block with Arguments:
def print_num
  yield(20,30)
end
print_num{|x, y| print "\nfirst number is : #{x} \nAnother number is : #{y}\n"}

#Block with & (Turning Block into a Proc):
def convert_block (&a_proc)
  a_proc.call
end
a_proc = Proc.new{puts "Coverted block to proc"}
convert_block(&a_proc)

#Block and Return:
def return_values
   puts return "Value returned from method"
   yield
end
puts return_values {return "Value returned from block"}

#Method without Block:
def example_block
  return "No block given" unless block_given?
  yield
end
puts example_block
puts example_block {"Block given!"}