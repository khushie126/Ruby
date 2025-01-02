#numbers
a=10
b=10.20
c=a+b
puts "#{c}"


#String
puts 'escape "\\"';
puts 'That\'s right';

#hash
hsh= colors ={"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hsh.each do |i,j|
    print i," is ",j,"\n"
end

#array
ary = ["ABC",10,20,3.14,"xys"]
ary.each do|i|
    puts i
end

#symbols
domains = {:sk =>10 , :no =>"ABC"}
puts domains[:sk]
puts domains[:no]