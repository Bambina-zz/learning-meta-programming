
def sayBoo
  p 'Loaded BOO! :P'
end

p File.basename(__FILE__) + ' is invoked'

$i = 0
def counter
  lambda{ p $i += 1 }.call
end

counter #=> 1
counter #=> 2

class Counter
  def initialize
    @i = 0
  end
  def count
    p @i += 1
  end
end

c = Counter.new
#c.count
#c.count
