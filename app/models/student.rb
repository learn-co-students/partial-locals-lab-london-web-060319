
class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students



  def self.search(term)
    if term == ""
      Student.all
    else
      Student.all.select{|student|
      student.name.downcase.include?(term.downcase)}
end
end
end
