module Caculator
  def self.tinhChuVi(r)
    return 0 if r.nil?
    return 2*r*Math::PI
  end
end

puts "Chu vi hinh tron co ban kinh r = 2 la:
 #{Caculator.tinhChuVi(2)}"

# Su dung nested module
module Caculator
  include Math

  def self.tinhChuVi(r)
    return 0 if r.nil?
    return 2*r*PI
  end
end

puts "Chu vi hinh tron co ban kinh r = 2 la:
 #{Caculator.tinhChuVi(2)}"
