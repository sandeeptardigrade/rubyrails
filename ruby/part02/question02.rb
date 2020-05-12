class Course
    attr_accessor :name ,:teachers , :course_number
    def initialize ()
        @name
        @teachers
        @course_number
    end
end
math_101 = Course.new
  math_101.name = 'Math 101'
  math_101.teachers = ["Albert Einstein"]
  math_101.course_number = 100

  computer_science_301 = Course.new
  computer_science_301.name = "Intro to Computer Science"
  computer_science_301.teachers = ["Dr. Zeus", "Mark Zuckerberg"]
  computer_science_301.course_number = 300

  social_studies_201 = Course.new
  social_studies_201.name = "Intro to Social Studies"
  social_studies_201.teachers = ["Steve Wozniak", "Brian Stevens"]
  social_studies_201.course_number = 200

class School < Course
    def initialize ()
        @courses =[]
    end
    def add_course(course)
        @courses << course
    end
    def find_by_name(name)
        for c in @courses
            if c[@name] == name
                return c
            end
        end
    end
    
    def list
        result = [];
        for c in @courses
            result << c
        end
        return result
    end
end
codecore = School.new
codecore.add_course(math_101)
codecore.add_course(computer_science_301)
codecore.add_course(social_studies_201)
p codecore
p codecore.list()
p codecore.find_by_name(math_101)  

