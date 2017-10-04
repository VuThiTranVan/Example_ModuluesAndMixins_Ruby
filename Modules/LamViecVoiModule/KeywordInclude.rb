module Person
  def name
    puts "My name is Person"
  end
end

class User
  include Person
end

User.new.name

# Using self.include
module Person
  def self.included(base)
    puts "#{base} included #{self}"
  end

  def name
    "My name is Person"
  end
end

class User
  include Person
end

class Employee
  include Person
end

