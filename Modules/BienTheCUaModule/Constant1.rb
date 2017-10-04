module Food
  STORE_ADDRESS = "The moon"

  class ClassInModule
    def displayAddress
      puts STORE_ADDRESS
    end
  end
end

fb = Food::ClassInModule.new
fb.displayAddress
