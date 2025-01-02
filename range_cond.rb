num= 2332
result = case num
  when 1000..2000 then "lies between 1000 and 2000"
  when 2000..3000 then "lies between 2000 and 3000"

else "Above 3000"
  end
puts result

if (('A'..'Z') === 'D') 
    puts "D lies in the range of A to Z" 
 end
 if ((1..100) === 77) 
   puts "77 lies in the range of 1 to 100"
 end