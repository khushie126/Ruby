#date : 06/01/2025
#khushi shah

# > method (compares the sum of the hash values)
a = { "a" => 100, "b" => 200 } 
b = {"a" => 100} 
c = {"a" => 100, "c" => 300, "b" => 200} 
puts "#{a>b}" #true
puts " #{b>c}" #false
puts " #{c>a}" #true


#to_hash
a = {a:100, b:200} 
puts "#{a.to_hash()}" # {:a=>100, :b=>200}

a = { "a" => 100, "b" => 200 } 
puts " #{a.to_hash()}" # {"a"=>100, "b"=>200}

#to_a
a = {a:100, b:200} 
puts " #{a.to_a()}" #Hash a to_a form : [[:a, 100], [:b, 200]]

a = { "a" => 100, "b" => 200 } 
puts " #{a.to_a()}"  #[["a", 100], ["b", 200]]

#to_s
a = {a:100, b:200} 
puts " #{a.to_s()}" # {:a=>100, :b=>200}
a = { "a" => 100, "b" => 200 } 
puts " #{a.to_s()}"  #{"a"=>100, "b"=>200}

#store
a = { "a" => 100, "b" => 200 }
puts " #{a.store('e', 67)}" # 67
puts (a) #{"a"=>100, "b"=>200, "e"=>67}

#size/length
a = { "a" => 100, "b" => 200 } 
puts "#{a.size}" # 2

#shift
a = { "a" => 344, "b" => 200 } 
puts " #{a.shift()}" # ["a", 344]

#select
a = { "a" => 100, "b" => 200 } 
puts "#{a.select{|key,value| key<"b"}}" #{"a"=>100}

#reject
a = { "a" => 100, "b" => 200 } 
puts "#{a.reject {|key,value|key <"b"}}" #{"b"=>200}

#invert
a = { "a" => 100, "b" => 200 } 
b= a.invert
puts b.keys.inspect

#fetch
a = { "a" => 100, "b" => 200 } 
puts a.fetch("a")

#at
puts a.values_at "a" #100

#availability 
puts a.has_key?("a") #true
puts a.key?("c")#false
puts a.include?("b") #true

#duplicate
a1=a.dup
puts a1.keys.inspect #["a", "b"]
puts a1.eql?(a) #true

#delete_if
 a.delete_if{|key,value| key=="a"}
 puts a.inspect #{"b"=>200}

 #merge
 b= {"name"=>"khushi","salary"=>10000}
 myhash = a.merge(b)
 puts myhash.inspect #{"b"=>200, "name"=>"khushi", "salary"=>10000}

 #assoc rassoc
 puts myhash.assoc("khushi").inspect #nil
 puts myhash.assoc("name").inspect #["name", "khushi"]

 puts myhash.rassoc("name").inspect #nil
 puts myhash.rassoc("khushi").inspect #["name", "khushi"]


 
