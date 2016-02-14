require 'pry'

class MyClass
  def my_method
    @v = 1
  end
end

binding.pry
# Try
# obj = MyClass.new
# obj.class => MyClass
# obj.instance_variables => []  (obj doesn't have @v yet)
# obj.my_method => 1
# obj.instance_variables => [:@v]
# obj.methods.grep /^my/ => [:my_method]
# obj.inspect => "#<MyClass:0x007fc699bda008 @v=1>"

# String.instance_methods == 'abc'.methods => true
# String.methods == 'abc'.methods => false
