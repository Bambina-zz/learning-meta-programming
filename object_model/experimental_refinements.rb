
class MyClass
  def my_method
    p 'return from original my_method'
  end

  def another_method
    my_method
  end
end

module MyClassRefinements
  refine MyClass do
    def my_method
      p 'return from refined my_method :O'
    end
  end
end

using MyClassRefinements

MyClass.new.my_method #=> "return from refined my_method :O"
MyClass.new.another_method #=> "return from original my_method"
