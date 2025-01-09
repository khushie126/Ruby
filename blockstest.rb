 #date: 08/01/2025
 #khushi shah

def test	
  puts "Inside Method!"
    yield "p1"
 end
 test{ |para| puts "Inside Block #{para}"}
 
puts "########################################"
def call_back
 puts "start of method"
  yield("khushi",99)
    
puts "end of method"
end
 call_back{
     |str,num| puts "inside the block "+ str +" "+ num.to_s
 }

#Passing BLOCK as parameter to a method
puts "########################################"
def test (&b)
     b.call
     3.times do (b.call) end 
     end
     test {
         puts "Hello world"
     }

puts "########################################"
def time
    start=Time.now
    puts start
    yield
end
puts time {"a"*1000000000}