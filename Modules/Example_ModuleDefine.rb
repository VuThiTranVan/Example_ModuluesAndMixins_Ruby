module MyModule

  # Constant
  PI = 3.14

  # instance_method
  # r: ban kinh; d: duong kinh
  def tinhChuVi(r, d)
    return d*PI if r.nil?
    return 2*r*PI
  end

  def tinhDienTich(r, d)
    return d**2*PI/4.0 if r.nil?
    return r**2*PI
  end

  # class_method
  def self.print
    puts "Output data:"
  end

end

class HinhTron
  include MyModule
  attr_accessor :r, :d
end

hinhTron = HinhTron.new
hinhTron.d = 3

MyModule.print
puts "Chu vi hinh tron: #{hinhTron.tinhChuVi(hinhTron.r, hinhTron.d)}"
puts "Dien tich hinh tron: #{hinhTron.tinhDienTich(hinhTron.r, hinhTron.d)}"

