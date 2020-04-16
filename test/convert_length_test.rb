require 'minitest/autorun'
require './lib/convert_length'
require 'minitest/reporters'
Minitest::Reporters.use!

class ConvertLengthTest < Minitest::Test
    def test_convert_length
        assert_equal 39.37, convert_length(1, from: :m, to: :n)
        assert_equal 0.38, convert_length(15, from: :n, to: :m)
        assert_equal 10670.73, convert_length(35000, from: :ft, to: :m)
    end
end