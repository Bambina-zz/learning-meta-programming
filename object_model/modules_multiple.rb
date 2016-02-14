require 'pry'

# 継承チェーンにモジュールが追加されている場合は、2回目の挿入を無視する

module M1; end

module M2
  include M1
end

module M3
  prepend M1
  include M2 # M1が既にprependされたので、ここではM2のみ継承チェーンに入る
end

module M4
  include M2
  prepend M1 # M2で既にインクルードされたので、このM1はスルーされる
end

binding.pry
# Try
# M2.ancestors => [M2, M1]
# M3.ancestors => [M1, M3, M2]
# M4.ancestors => [M4, M2, M1]
