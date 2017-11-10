require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestGuest < MiniTest::Test

  def setup
    @song1 = Song.new("Motorcycle emptiness", "Manic Street Preachers")
    @song2 = Song.new("If you tolerate this, then your children will be next", "Manic Street Preachers")
    @song3 = Song.new("A prologue to history", "Manic Street Preachers")
    @song4 = Song.new("4st7", "Manic Street Preachers")
    @song5 = Song.new("Roses in the hospital", "Manic Street Preachers")
    @song6 = Song.new("Found that soul", "Manic Street Preachers")
    @song7 = Song.new("Running up that hill", "Kate Bush")
    @song8 = Song.new("Keep on running", "The Spencer Davis Group")
    @song9 = Song.new("Born to run", "Frankie Goes to Hollywood")
    @song10 = Song.new("Running out of fantasy", "Manic Street Preachers")

    @songs1 = [@song1, @song2, @song3, @song4, @song5, @song6, @song10]
    @songs2 = [@song7, @song8, @song9, @song10]

    @guest1 = Guest.new("James Dean Bradfield", 100, @song1)
    @guest2 = Guest.new("Nicky Wire", 80, @song3)
    @guest3 = Guest.new("Sean Moore", 60, @song6)
    @guest4 = Guest.new("Richey Edwards", 47, @song4)
    @guests = [@guest1, @guest2, @guest3, @guest4]

    @room1 = Room.new("Manics Room", 3, @songs1)
    @room2 = Room.new("Running Room", 44, @songs2)
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

  def test_if_fav_song_celebrate
    assert_equal("I love that song!", @guest4.celebrate(@room1))
    # assert_equal(false, @guest4.celebrate(@room2))
  end

end
