
module StringExtensions
  refine String do
    def reverse
      'doesnt return correctly :p'
    end
  end
end

module StringStuff
  using StringExtensions
  p 'something sentence'.reverse #=> doesnt return correctly :p
end


p 'it would be working!!'.reverse #=> !!gnikrow eb dluow ti
