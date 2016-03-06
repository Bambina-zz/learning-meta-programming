require 'pry'

# privateメソッドは暗黙的なレシーバselfに対するものでなければいけない
# 同じクラスの他のオブジェクトのprivateメソッドも呼び出せない
# superクラスのprivateメソッドは呼び出せる
class MyClass

  def public_method
    self.private_method
    # private_method #=> this would work.
  end

  private

  def private_method
  end

end

binding.pry
### Try
# MyClass.new.public_method #=> an error would occurr
