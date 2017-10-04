module Fooable
  def self.foo=(value)
    @foo = value
  end

  def self.foo
    @foo
  end
end

Fooable.foo = "baz"
puts Fooable.foo
