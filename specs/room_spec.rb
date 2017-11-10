require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../song.rb')
require_relative('../room.rb')

class TestRoom < Minitest::Test

  def setup
    @song1 = Song.new("Motorcycle emptiness", "Manic Street Preachers")
    @song2 = Song.new("If you tolerate this, then your children will be next", "Manic Street Preachers")
    @song3 = Song.new("A prologue to history", "Manic Street Preachers")
    @song4 = Song.new("Faster", "Manic Street Preachers")
    @song5 = Song.new("Roses in the hospital", "Manic Street Preachers")
    @song6 = Song.new("Found that soul", "Manic Street Preachers")
    @song7 = Song.new("Running up that hill", "Kate Bush")
    @song8 = Song.new("Keep on running", "The Spencer Davis Group")
    @song9 = Song.new("Born to run", "Frankie Goes to Hollywood")
    @song10 = Song.new("Running out of fantasy", "Manic Street Preachers")

    @songs1 = [@song1, @song2, @song3, @song4, @song5, @song6, @song10]
    @songs2 = [@song7, @song8, @song9, @song10]

    @room1 = Room.new("Manics Room", 3, @songs1)
    @room2 = Room.new("Running Room", 44, @songs2)


    @guest1 = Guest.new("James Dean Bradfield")
    @guest2 = Guest.new("Nicky Wire")
    @guest3 = Guest.new("Sean Moore")
    @guest4 = Guest.new("Richey Edwards")


  end

  def test_check_in_guest()
    @room1.check_in(@guest1)
    assert_equal(1, @room1.guests())
  end

  def test_check_out_guest()
    @room1.check_out(@guest1)
    assert_equal(0, @room1.guests())
  end

  def test_check_in_check_out()
    @room1.check_in(@guest1)
    @room1.check_out(@guest1)
    assert_equal(0, @room1.guests())
  end

  # def test_check_in_beyond_capacity()
  #   @room1.check_in(@guest1)
  #   @room1.check_in(@guest2)
  #   @room1.check_in(@guest3)
  #   @room1.check_in(@guest4)
  #   assert_equal("Sorry, this room is for die hard Manics fans", @room1.guests())
  # end


  def test_add_song_to_room()
    @room1.add_song(@song1)
    assert_equal([@song1, @song2, @song3, @song4, @song5, @song6, @song10, @song1], @room1.songs())
  end

end
