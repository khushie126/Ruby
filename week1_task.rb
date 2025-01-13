#date :10/01/2025
#khushi shah

#TASK1
puts "Please enter your name"
name = gets.chomp
puts "What's your age?"
age = gets.chomp.to_i
puts "What's your favourite color?"
color = gets.chomp

puts "Hello #{name}, aged #{age}, who likes the color #{color}!"

puts "#########################################################"

#TASK2
puts "enter your age: "
input = gets.chomp
begin
  age = Integer(input)

  if age > 18
    puts "You are eligible to vote!"
  elsif age < 18
    puts "You are not eligible to vote yet!"
  else 
    puts "Please enter a valid age"
  end

rescue ArgumentError
  puts "Invalid input! Please enter a valid number for age."
end

puts "#########################################################"

#TASK3
array=[]
puts "Enter your 5 favourite food items :"
max_size=5
loop do
    break if array.length >= max_size
    ary1 =gets.chomp
    break if ary1 == ""
    array << ary1
end
puts "Your favourite food items are: "
array.each_with_index do |array, index|
    puts "#{index+1}: #{array}"
  end

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
loop do
puts "Would you like to add more information to your profile? (yes/no) yes"
choice= gets.chomp
break if choice =="no"
puts "Enter the attribute name:"
attribute=gets.chomp

puts "Enter the attribute value:"
attribute_value=gets.chomp
puts "#########################################################"
puts "Updated Profile:"
my_hash[attribute.to_sym]=attribute_value
my_hash.each {|k,v| puts "#{k.capitalize}:#{v}"}
end


