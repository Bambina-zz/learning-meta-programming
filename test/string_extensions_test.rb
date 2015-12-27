require 'test/unit'
require '../object_model/alphanumeric.rb'
require 'pry'

class StringExtensionsTest < Test::Unit::TestCase
  def test_strip_non_alphanumeric_characters
    assert_equal '3 The Magic Number', '#3, The, *Magic Number?*'.to_alphanumeric
  end
end
