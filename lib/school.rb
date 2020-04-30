class School
  
  attr_reader :name, :roster
  attr_accessor :grade
  
  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end
  
  def add_student(name, grade)
    if roster.key?(grade) == true
      @roster[grade] << name
    else 
      roster[grade] = []
      roster[grade] << name
    end
  end
  
  def grade(grade)
     @roster.values_at(grade).flatten
  end
  
  def sort
    new_hash = {}
    @roster.sort{|name| name}
    new_hash[grade] = array.name
    
  end
  end

  


