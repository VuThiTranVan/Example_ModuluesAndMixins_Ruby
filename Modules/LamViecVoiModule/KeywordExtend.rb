module Person
  def name
    puts "My name is Person"
  end
end

class User
  extend Person
end

# User.new.name # error
User.name
