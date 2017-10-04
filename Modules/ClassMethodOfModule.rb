module MyModule
  def self.class_method_1
    puts "Tui la cach khai bao thu 1"
  end

  def MyModule.class_method_2
    puts "Tui la cach khai bao thu 2"
  end

  class << self
      def class_method_3
    puts "Tui la cach khai bao thu 3"
      end
  end
end

MyModule.class_method_1
MyModule.class_method_2
MyModule.class_method_3



# Class method trong class cung tuong tu nhu class method trong module
# No chi thuoc ve Class/Module khai bao no
class MyClass
  include MyModule
end
# MyClass.new.class_method_1
# MyClass.class_method_1
class MyClass2
  extend MyModule
end
# MyClass2.new.class_method_1
# MyClass2.class_method_1

=begin
  Van de: Khi mot class include module:
   - no se lay toan bo cac instance_method cua module
   - khong lay class_method cua module
=end
module MyModuleSol
  def my_method
      puts "hello"
  end
end

class MyClassSol
  class << self
      include MyModuleSol
  end
end

MyClassSol.my_method
=begin
  Thuc ra, luc nay my_method cung chinh la mot class_method cua MyClass
  => Nhu vay se xuat hien van de ton dong: CAC OBJECT TU CLASS SE KHONG THE GOI DUOC
=end

# cach 2
class MyClassSol2
  extend MyModuleSol
end
MyClassSol2.my_method

=begin
  cach giai quyet 1 va 2 deu co the goi method trong module tu class
  Nhug chung ta van khong the goi method cua Module tu instance cua class
=end
