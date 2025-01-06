#date-03-01-2025
#Khushi

#capitalize method
puts :hello_world.to_s.capitalize.to_sym #Hello_world
puts :my_world.to_s.capitalize.to_sym #My_world
 
#downcase method
my_symbol = :HelloWorld
puts my_symbol.to_s.downcase.to_sym #helloworld

#inspect
symbol = :hello
puts symbol.inspect # :hello

#casecmp
:aBcDeF.casecmp(:abcde)     # first string is greater than second returns 1
:aBcDeF.casecmp(:abcdef)    #if both strigs are equal  0
:aBcDeF.casecmp(:abcdefg)   # if second string is greater than first -1

#swapcase
my_symbol = :helloWorld
swapped_symbol = my_symbol.to_s.swapcase.to_sym
puts swapped_symbol

# == , =~(match) , ===
symbol1 = :hello
symbol2 = :helloworld
puts "#{symbol1 == symbol2}" #false
puts "#{symbol1 == symbol1}" #true


puts "#{symbol1 === symbol2}"#false
puts "#{symbol1 === symbol1}"#true

puts "#{symbol1.=~(/he/)}" #0 gives the starting index value of the string
puts "#{symbol2.=~(/ab/)}" 


#empty
puts "#{symbol1.empty?}" #false

#encoding
puts "#{symbol1.encoding}" #US-ASCII

#succ next
puts "#{symbol1.succ}" #hellp
puts "#{symbol1.next}" #hellp

#size
puts "#{symbol1.size}"# 5 
puts "#{symbol1.length}" 

#intern
puts "#{symbol1.intern}" #hello

