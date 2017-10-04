module Person
  def self.prepended(base)
    puts "#{self} prepended to #{base}"
  end

  def name
    "My name belongs to Person"
  end
end
class User
  prepend Person
end

puts User.new.name
