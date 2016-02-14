require 'pry'

# モジュールにクラスをincludeする　=>　モジュールはクラスの真上に挿入される
# モジュールにクラスをprependする　=>　モジュールはクラスの真下に挿入される

module M1
end

module M2
end

class C
  include M1
  prepend M2
end

class D < C
end

binding.pry
# Try
# D.ancestors => [D, M2, C, M1, Object, PP::ObjectMixin, Kernel, BasicObject]

### cf. ###
# class Object < BasicObject
#   include Kernel
# end
# Object.ancestors => [Object, PP::ObjectMixin, Kernel, BasicObject]
###########
