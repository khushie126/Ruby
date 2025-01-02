class Employee
    @@no_of_customers = 0
    def initialize(id, name,salary)
    @emp_id=id
    @emp_name=name
    @emp_salary=salary
    end
    def display_details()
    puts "employee id is #@emp_id"
    puts "employee name is #@emp_name"
    puts "employee salary is #@emp_salary"
    end
    def total()
    @@no_of_customers += 1
    puts "Total number of customers: #@@no_of_customers"
    end 
    end
    emp1= Employee.new("1" , "khushi" , "10000")
    emp2 =Employee.new("2" , "Ayushi" , "20000")

    emp1.display_details()
    emp1.total()
    emp2.display_details()
    emp2.total()
