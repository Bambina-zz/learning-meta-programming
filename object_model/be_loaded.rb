def sayBoo
  p 'Loaded BOO! :P'
end

p File.basename(__FILE__) + ' is invoked'

$i = 0
def increment
  lambda{ $i += 1 }
end

def printer
  lambda{ p $i }
end

def counter
  increment.call
  printer.call
end

counter #=> 1
counter #=> 2
