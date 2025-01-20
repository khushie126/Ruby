# date : 20/01/2025
# Khushi Shah 
#Program 1
module GradeCalculator
    def calculate_grade(mark)
        case mark
        when 90..100
            then 'A'
        when 80..89
            then 'B'
        when 70..79 
            then 'C'
        when 60..69 
            then 'D'
        else 'F'
        end
      end    
   
    def calculate_average(marks) 
         sum = marks.values.sum
         average = sum.to_f / marks.size
         average 
    end
end
class Student
include GradeCalculator
    def initialize(name)
        @name = name
        @marks = Hash.new
    end
    def add_mark(subject , mark) 
        if mark >= 0 && mark <= 100 
            @marks[subject] =mark
            puts "Added mark for #{subject}: #{mark}"
        else
            puts "Invalid marks"
        end  
    end
    def display_grades
        puts "Report Card for #{@name}:"
        @marks.each do |subject, mark|
            grade = calculate_grade(mark)
            puts "#{subject}: Mark = #{mark}, Grade = #{grade}"
          end
          
          average = calculate_average(@marks)
          overall_grade = calculate_grade(average)
          
          puts "Average Mark: #{average}, Overall Grade: #{overall_grade}"
      
    end
end
student = Student.new("John Doe")
student.add_mark("Math", 85)
student.add_mark("Science", 92)
student.add_mark("English", 78)
student.display_grades