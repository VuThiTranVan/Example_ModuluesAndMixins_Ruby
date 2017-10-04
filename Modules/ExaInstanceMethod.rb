module MyModule
  def helloBaby
    puts "Hello baby, I am Module"
  end
end

# MyModule.new.helloBaby # error
# MyModule.helloBaby # error

=begin
  su dung voi tu khoa include
=end
class Hello
  include MyModule
end

# Hello.helloBaby # error

#Hello.new.helloBaby


=begin
  su dung voi tu khoa extends
=end
class Hello2
  extend MyModule
end
# Hello2.helloBaby

# Hello2.new.helloBaby # error

=begin
  su dung method function
=end
module MyMod
  def helloWord
    puts "Hello world"
  end

  module_function :helloWord
end

class MyClass1
  include MyMod
end

class MyClass2
  extend MyMod
end

MyMod.helloWord
MyMod.new.helloWord # error
MyClass2.new.helloWord # error
MyClass1.new.helloWord # error

MyClass2.helloWord # error
MyClass1.helloWord # error
