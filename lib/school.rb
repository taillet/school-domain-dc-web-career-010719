# code here!
require 'pry'

class School
  attr_accessor :school
  attr_writer :grade
  attr_reader :add_student, :roster


  def initialize(school, roster = {})
    @school = school
    @roster= roster
  end

  def add_student(students, grade)
    @roster[grade] ||= []
    students.is_a?(String) ? roster[grade] << students :
    students.each {|student| @roster[grade] << (student)}
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    hash = {}
    @roster.keys.each { |key| 
    hash[key] = self.roster[key].sort!}
    end
  end
  
end
