require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("James Dean Bradfield", 100, @song1)
    @guest2 = Guest.new("Nicky Wire", 80, @song3)
    @guest3 = Guest.new("Sean Moore", 60, @song6)
    @guest4 = Guest.new("Richey Edwards", 47, @song4)
  end

  def test_guest_name()
    # guest = Guest.new("James Dean Bradfield")
    assert_equal("James Dean Bradfield", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(47, @guest4.money())
  end

  def test_has_favourite_song
    assert_equal(@song4, @guest4.fav_song)
  end

end
