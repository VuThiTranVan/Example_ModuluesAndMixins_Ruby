module MyModule
  def hello
    puts "Hello world"
  end

  #module_function :hello
end

class HelloWorld
  include MyModule
end

#HelloWorld.new.hello # => Hello world
MyModule.hello # => Hello world
