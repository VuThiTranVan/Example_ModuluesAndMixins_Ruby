module BMW
  def BMW.included(mod)
    puts "#{self} included in #{mod}"
  end
end

module Car
  include BMW
end

