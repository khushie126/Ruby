#date : 03/01/2025
#Khushi 

#creating array
# # input
# arr=[1,2,3]
# arr.each do |i|
#    p i
# # => 1 2 3 

# input
# ary = Array.new #=> []
# ary2=Array.new(3)
# ary1=Array.new(3,true)
# puts "#{ary}"
# puts "#{ary1}"
# puts "#{ary2}" 
#   #=> []
#   #=> [nil, nil, nil]
#   #=> [true, true, true]

arr=[1,2,3,4,5,6,7]
 # Fetching an array elements
puts arr.at(6) # 7
arr.fetch(3) #`fetch': index 10 outside of array bounds: -7...7 (IndexError)
puts arr.fetch(100,"hellow") # hellow
puts arr.first #1
puts arr.last # 7

#accessing array elements
puts arr.take(3)#1 2 3
puts arr.drop(3)#4 5 6 
puts arr.length # 7
puts arr.count # 7
puts arr.empty? # false
puts arr.include? (1)# true 


#Adding items to an array
puts arr.push(10) #push the element at end 
puts arr<< 12
puts arr.unshift("First") #push the element at first
puts arr.insert(5,"Khushi")#push the element at any index
puts arr.insert(7,"abc",1,true)#multiple values can be inserted 
puts arr.inspect 
#["First", 1, 2, 3, 4, "Khushi", 5, "abc", 1, true, 6, 7, 10, 12]

#Removing items from an array
puts arr.pop #removes the last index value
puts arr.shift # removes the first index value
puts arr.delete_at(9) #removes the value at any index
puts arr.delete(2) # removes the index value
puts arr.inspect
#[1, 3, 4, "Khushi", 5, "abc", 1, true, 7, 10]

#removing nil values from an array
arr1=["abc",true,1,3,6,7,nil,nil]
puts arr1.inspect #["abc", true, 1, 3, 6, 7, nil, nil]
puts arr1.compact#removes nil values from an array
puts arr1.inspect #["abc", true, 1, 3, 6, 7, nil, nil]
puts arr1.compact!
puts arr1.inspect #["abc", true, 1, 3, 6, 7]

#removing duplicate values from an array
arr2=["abc",1,true,1,2,3,6,7,nil,nil,"abc"]
puts arr2.uniq! #removes duplicate elements from an array 
puts arr2.inspect # ["abc", 1, true, 2, 3, 6, 7, nil]

#iterating over array elements
a =[1,2,3,4,5]
a.each {|i| print i -=10 , " "}
a.map {|j| puts 5*j }

#class methods
array1 = [1, 2, 3]
array2 = [1, 2, 3]
array3 = array1
puts array1.equal?(array2)  # false 
puts array1.equal?(array3)#true

first_array = ["abc", "abc"]
second_array = Array.new(first_array) 
first_array.equal? second_array   #false

#slice and sorting method
a = [ "a", "b", "c" ]
a.slice!(1)     # "b"
a.slice!(-1)    #"c"
print a.inspect #["a"]


#any method
animals=%w[ant bear cat].any? { |word| word.length >= 3 } # true
values=[nil, true, 99].any?(Integer)#true
[nil, true, 99].any? # true
[].any?  #false

ary = [ "d", "a", "e", "c", "b" ]
ary.sort! 
print ary.inspect#["a", "b", "c", "d", "e"]

ary.sort! { |a, b| b <=> a }
print ary.inspect #["e", "d", "c", "b", "a"]

ary3 = ["a",100]
ary3.concat(ary)
print ary3