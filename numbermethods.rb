#date:03/01/2025
#Khushi

#odd even
a=9
if a.even?# returns false
    puts "Given value is even"
else 
    puts "try another value"
end

if a.odd? #returns true
    puts "Given value is odd "
else 
    puts "try another value"
end

#ceil and floor
b=12.7
puts b.ceil #13
puts b.floor #12

#next and pred
num=10
p num.next #11
p num.pred #9

#to_s
 p num.to_s

 #round
 number =12
 p number.round(-1) #10
 p number.gcd(6) #6

 #times
 5.times do |i|
    print i, " " # 0 1 2 3  4
  end

 #sqrt
 num1 =25
 puts Integer.sqrt(num1) # 5 