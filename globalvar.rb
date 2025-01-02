$a=10
class class1
    def print_global
    puts "#$a"
    end
    end
class class2
    def print_global
    puts "#$a"
    end
    end
c=class1.new
c1=class2.new

c.print_global
c1.print_global