class School

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if roster[@grade] == nil
      roster[@grade] = [@student_name]
    else
      roster[@grade] << @student_name
    end
  end

  def grade (year)
    roster[year]
  end

  def sort
    @roster.map {|key, value| [key,value.sort]}.to_h
  end

end
