require 'pry'

load('./be_loaded.rb')
require './be_required'

def sayBoo
  p 'Boo!'
end

def sayHoo
  p 'Hoo!'
end

load('./be_loaded.rb')
require './be_required'

binding.pry
# Try
# sayBoo
# sayHoo
# counter
