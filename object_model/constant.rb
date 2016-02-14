#######################
# モジュールとクラスの違い
#######################
# 継承関係は Class < Module < Object < BasicObject < nil(BasicObjectは何も継承していない)
p Class.superclass #=> Module
# Classクラスは、そこから生成されるインスタンスが「クラス」として機能するための３つのインスタンスメソッドを追加した、モジュールである
p Class.instance_methods false #=> [:allocate, :new, :superclass]

###########
#　定数の参照
###########
module M
  class C
    X = 'ある定数'
  end

  p C::X #=> "ある定数"
end

p M::C::X #=> "ある定数"
#p C::X #=> uninitialized constant C (NameError)


Y = 'ルートレベルの定数'
module M
  Y = 'Mの中にある定数'
  p Y #=> "Mの中にある定数"
  p ::Y #=> "ルートレベルの定数"
end


p M.constants #=> [:C, :Y] モジュールインスタンスが持つ定数
p Module.constants #=> [:Object, :Module, :Class, :BasicObject, :Kernel, ....実行プログラム内のトップレベル定数を返す
p Module.constants == Object.constants #=> true
p BasicObject.constants #=> [:BasicObject]
p BasicObject.instance_methods #=> [:==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
p Object.instance_methods false #=> []
