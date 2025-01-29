# date : 21/01/2025
#Khushi shah
class A
    def method_1
        puts "Public method called" 
        method_2
    end
    private
    def method_2
       puts "private method called"
    end
    protected
    def method_3
        puts "Protected method called"
    end
end
class B < A 
    def method_4
       puts "Class B method called"
       method_1
  
    obj = B.new
    obj.method_3
    end
end

obj1 = B.new
obj1.method_4