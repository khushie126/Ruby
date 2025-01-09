#date : 08/01/2025
#Khushi shah


#while loop 
#first condition is chekched then code is executed
i =0
while i<5 do 
    puts "we are inside the loop with the value #{i}"
    i +=1
end

#while modifier loop
#first code is executed then condition is cheched
i=0
puts "\n\n"
begin
    puts "we are inside the loop with the value #{i}"
    i += 1
end while i<5

#until loop
#condition is false then code is executed
i = 0
until i>5 do 
    puts "we are inside the loop with the value #{i}"
    i+=1
end

#until modifier
#first code is executed then condition is checked
i=0
begin 
    puts "we are inside the loop with the value #{i}"
    i+=1
end until i>5

#for loop

for i in 0..10   
    puts "value is #{i}"
end
puts "\n \n"
#alternative for for loop
(0..10).each do |i|
    puts "value is #{i}"
end

#iterators
8.times do  puts"hello" end
5.upto(7) {|i|puts "hello #{i}"}
7.downto(5) {|i|puts "hello #{i}"}
5.step(20,5){|i| puts "hello #{i}"}

[1,2,3,4,5].select {|x| x !=3}.each do |i|
    puts i 
end

puts "########################################"

[1,2,3,4,5].map {|x| x +1}.each do |i|
    puts i 
end

puts "########################################"
#break statement
for i in 0..5
    if i > 2 then
       break
    end
    puts "Value of variable is #{i}"
 end
 puts "########################################"
 #next statement
 for i in 0..5
    if i < 2 then
       next
    end
    puts "Value of local variable is #{i}"
 end

 puts "########################################"
 #retry statement
 for i in 0..5
    retry if i > 2
 puts "Value of local variable is #{i}"
 end
