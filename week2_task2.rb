# date : 20/01/2025
# Khushi Shah 

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
    attr_accessor :name , :marks

    include GradeCalculator

    def initialize
        @name = name
        @marks = Hash.new
    end
    def add_mark
        puts "Enter student name: "
        @name = gets.chomp
        max_size = 5
        loop do
            break if @marks.length >= max_size
            begin
            puts "Enter the subject name: "
            subject = gets.chomp
            puts "Enter marks for #{subject}: "
            mark = gets.to_i
            if mark >= 0 && mark <= 100 
               @marks[subject] = mark
            else
               puts "Value out of range . Please again enter the marks"
            end
            rescue   
                retry
            end
        end 
            @marks.each {|subject,mark|puts "Added mark for #{subject}: #{mark}"}
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
student = Student.new
student.add_mark
student.display_grades