module Speak
  def speak(sound)
    puts "I can #{sound} bla..bla.."
  end
end

class Dog
  include Speak
end

class Bird
  include Speak
end

putin = Dog.new
putin.speak("gau gau")

sonCa = Bird.new
sonCa.speak("liu' lo liu' lo")
