require 'pry'

class String
  # func: Remove special characters and punctuation from a string
  # example
  # input:  '#3, The, *Magic Number?*'
  # output: '3 The Magic Number'
  def to_alphanumeric
    gsub(/[^\w\s]/, '')
  end
end

#binding.pry

# Try
# str = '#3, The, *Magic Number?*'
# str.to_alphanumeric #=> "3 The Magic Number"
