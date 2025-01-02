$, = ","
range =(1..5).to_a
puts "#{range}"
range1 =(1...5).to_a
puts "#{range1}"
puts range.include?(3)
ans= range.max
puts "Max value #{ans}"
ans1=range.min
puts "Min value #{ans1}"
range2 = 6..8
range2.each do |i|
    puts "in loop #{i}"
end


num= 3723
  result = case num
  when 1000..2000 then "lies between 1000 and 2000"
  when 2000..3000 then "lies between 2000 and 3000"
  else "Above 7000"
  end
  puts result