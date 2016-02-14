require 'pry'

# メソッド探索の流れ：レシーバのクラスに入り、メソッドを見つけるまで継承チェーンを上る
# 「右へ一歩、それから上へ」


class MySuperClass
  def super_method
    p 'super_method is called'
  end
end

class MyClass < MySuperClass
  def my_method
    p 'my_method is called'
  end
end

class MySubClass < MyClass
end

obj = MySubClass.new
obj.my_method #=> "my_method is called"
obj.super_method #=> "super_method is called"

binding.pry
# Try
# MySubClass.ancestors #=> => [MySubClass, MyClass, MySuperClass, Object, PP::ObjectMixin, Kernel, BasicObject]
