require '../lib/complejo'
require 'test/unit'

class TestComplejo < Test::Unit::TestCase
	def setup
		@numberOne = Complejo.new(3.0,2.0)
		@numberTwo = Complejo.new(0.0,2.0)
	end
	
	def test_suma
		assert_equal(("3.0 + 4.0i"), (@numberOne.sum(@numberTwo)).to_s)
	end
end