require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("James Dean Bradfield")
    @guest2 = Guest.new("Nicky Wire")
    @guest3 = Guest.new("Sean Moore")
    @guest3 = Guest.new("Richey Edwards")
  end

  def test_guest_name()
    # guest = Guest.new("James Dean Bradfield")
    assert_equal("James Dean Bradfield", @guest1.name)
  end



end
