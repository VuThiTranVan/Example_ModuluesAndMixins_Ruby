module MyMod
  A = 123
  def printInfo
    puts "hello MyMod"
  end

  def self.printInfo1
    puts "cua MyMod"
  end

end

class Product
  include MyMod

  puts "value A: #{A}"
end

Product.new.printInfo
# Product.new.printInfo1 error vi self.printInfo1 la cua module
puts Product::A

class Product1
  extend  MyMod
  # Khong the call constant A. Neu muon truy cap thi phai tao set_get
end

Product1.printInfo
# Product1.printInfo1 vi self.printInfo1 la cua module
