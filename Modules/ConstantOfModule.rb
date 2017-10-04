module MyConstant
  PI = 3.14
  AUTHOR = "VanVTT"
end

puts "Module call constant Pi: #{MyConstant::PI}"

# su dung include voi constant
class MyClass
  include MyConstant
end

puts MyClass::PI

# su dung extend voi constant
class MyClass1
  extend MyConstant
end

# puts MyClass1::PI # error

