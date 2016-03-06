require 'pry'

class MyClass
  def testing_self
    @var = 10 # selfのインスタンス変数 @var が作られる
    my_method # レシーバを明示しないメソッド呼び出しは、すべてselfに対する呼び出し(MyClassのインスタンス)
    self
  end

  def my_method
    @var = @var + 1
  end
end

binding.pry
# Try
# obj = MyClass.new
# obj.testing_self #=> #<MyClass:0x007fe92b90faa8 @var=11>
