require 'pry'

class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

obj = Greeting.new('Hi!')
binding.pry

# try to ask
# obj.class #=> Greeting
# obj.class.instance_methods(false) #=> [:welcome]
# obj.instance_variabls #=> [:@text]
