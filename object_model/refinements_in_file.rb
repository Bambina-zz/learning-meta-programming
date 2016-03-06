require 'pry'

module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/,'')
    end
  end
end

using StringExtensions

p "something *** sentence!!".to_alphanumeric # => "something  sentence"
