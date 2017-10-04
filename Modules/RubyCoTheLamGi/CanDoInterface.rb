# Vi du voi nessted module
module Chay
  def chay(vanToc)
    puts "\tToi chay voi van toc #{vanToc} km/h"
  end

  def defaultChay
    puts "\tToi co the chay la la"
  end
end
module Boi
  def lan
    puts "\tToi khong biet boi, nhung tui lan duoc, hehe"
  end

  def boi
    puts "\tToi co the boi"
  end
end

module MyMod
  include Boi
  include Chay

  def defaultQuestion
    puts "Ban co the lam duoc gi?"
  end
end

class Person
  include MyMod
end

person = Person.new
person.defaultQuestion
person.boi
person.chay(20)

me = Person.new
me.defaultQuestion
me.lan
me.defaultChay

