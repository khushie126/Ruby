#date :10/01/2025
#khushi shah

#TASK1
puts "Please enter your name"
name = gets.chomp
puts "What's your age?"
age = STDIN.gets.chomp.to_i
puts "What's your favourite color?"
color = gets.chomp

puts "Hello #{name}, aged #{age}, who likes the color #{color}!"

puts "#########################################################"
#TASK2
age = 20
if age > 18
    puts "You are eligible to vote!"

elsif age <18
    puts "You are not eligible to vote yet!"
else 
    puts "please enter valid age"
end
puts "#########################################################"
#TASK3
array=[]
puts "Enter your favourite food items :"
loop do
    ary1 =gets.chomp
    break if ary1 == ""
    array << ary1
end
puts "Your favourite food items are: "
puts array

puts "#########################################################"

#TASK4
my_hash = {:name=> name,
:age=>age,
:color => color,
:favourite_foods=>array
}

#date: 13/01/2025
#TASK5
puts "Here's your profile information!"
my_hash.each {|k,v| puts "#{k.capitalize}:#{v}" }

#TASK6
puts "Would you like to add more information to your profile? (yes/no) yes"
choice= gets.chomp

while choice== "yes"

puts "Enter the attribute name:"
attribute=gets.chomp
break if attribute =="done"

puts "Enter the attribute value:"
attribute_value=gets.chomp
puts "#########################################################"
puts "Updated Profile:"
my_hash[attribute.to_sym]=attribute_value
my_hash.each {|k,v| puts "#{k.capitalize}:#{v}" }
end


