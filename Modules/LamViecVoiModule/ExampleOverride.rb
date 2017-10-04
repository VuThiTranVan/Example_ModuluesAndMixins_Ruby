# Using include
module Person
  def name
    "I am Person"
  end
end

class User
  include Person

  def name
    "I am User"
  end
end

puts User.new.name

# Using prepended
module Person1
  def name
    "I am Person"
  end
end

class User1
  prepend Person

  def name
    "I am User"
  end
end

puts User1.new.name
