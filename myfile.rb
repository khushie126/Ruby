# date : 22/01/2025
# Khushi Shah
my_file = File.new("input.txt" , "w+")
if my_file
        max_size = 5
        myhash = {}
        while myhash.length < max_size
          puts "Enter the attribute name:"
          attribute=gets.chomp

          puts "Enter the attribute value:"
          attribute_value=gets.chomp

          myhash[attribute] = attribute_value
        end

        myhash.each {|k,v| my_file.puts "#{k.capitalize}:#{v.capitalize}"}
        my_file.close 
        puts "Reading data from file:"
        File.open("input.txt", "r") do |my_file|
        IO.foreach("input.txt"){|block| puts block}
        end
       
      loop do 
        puts "Would you like to add more data ? (yes/no)"
        response = gets.chomp
        break if response == "no"
        
        puts "Enter the attribute name:"
        attribute=gets.chomp

        puts "Enter the attribute value:"
        attribute_value=gets.chomp

        myhash[attribute] = attribute_value
      end
        File.open("input.txt", "w") do |my_file|
        myhash.each {|k,v| my_file.puts "#{k.capitalize}:#{v.capitalize}"}
        end
        my_file.close 

        puts "Updated Data: "
        
        arr =  IO.readlines("input.txt")
        puts arr    
else
     puts "Unable to Open file"
end
