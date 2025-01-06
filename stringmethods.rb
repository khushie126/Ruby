#date: 05/01/2025
#khushi

#length method
str ="hello world"
print "#{str.length}\n"

#Empty method
"Hello".empty? # false
" ".empty?     # false
"".empty?      # true

#Split method
myArray = "Khushi shah".split 
puts myArray 

str1 ="hello!! this is khushi shah".split(/ /,2)
puts str1 #hello!!
#this is khushi shah

myArray = "khushi shah".split('s',-1)
puts myArray  # khu
#hi 
#hah
puts "H-e-l-l-o".split('-')


#count method
a = "hello world" # 3
puts a.count("l")

b="hello world" # 5
puts b.count('lo')

#insert method
puts "Ruby".insert(0, 'Z')  #ZRuby

puts "Ruby".insert(-3, 'Z')  #RuZby

#upcase
puts "ruby".upcase #RUBY
puts "RUBY".downcase #ruby

#swapcase
puts "hELLO wORLD".swapcase #Hello World

#capitalize
puts "HELLO, HOW ARE YOU?".capitalize #Hello, how are you?

#reverse
puts "Hello World!".reverse

#chop removes the last character of string
name = "Khushi"
name.chop!
puts name #Khush
puts name=="Khush" # true

#inspect
puts "Ru \n y".inspect 

#index
puts "mangal".index('g') #3
puts "Mangal".index(?g)  #3       
puts "Language".index(/[aeiou]/, -3) #5

#include
puts "Ruby".include? "by"   # true 

#chars
puts "Ruby".chars()  # return an array of characters

#hash
puts "Ruby".hash #-2740449509396476012

#eql
puts "Ruby".eql?("ruby")  # false
puts "String".eql?("String") # true

# === == =~
puts "Ruby" === "Ruby" #true
puts "Hello" === "Hell" #false
puts "Ruby" ===90 #false
puts "Ruby" === "ruby" #false

puts "Ruby" == "Ruby"  #true

puts "String123" =~ /\d/ #true


#to_i
puts "15".to_i #returns an integer 15

#gsub (replace)
puts "ruby is cool".gsub("cool", "very cool")  #ruby is very cool
puts "ruby is cool".gsub(/[aeiou]/, "*")  #r*by *s c**l

#chomp
puts "Ruby".chomp! 
puts "Ruby\r\n".chomp  # Ruby
puts "String\r\n\r\r\n".chomp! #String

#casecamp
puts "RuBy".casecmp("ruby") #0
puts "Helloworld".casecmp("hello") #-1
puts "hello".casecmp("Helloworld")  #1

puts "RuBy".casecmp?("ruby") #true
puts "Helloworld".casecmp?("hello") #false

#concat
str2 = "Hello"
str2.concat(" World",33) 
puts str2
