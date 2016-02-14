
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
