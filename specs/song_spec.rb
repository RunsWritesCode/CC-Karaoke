require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')
require_relative('../room.rb')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Motorcycle emptiness", "Manic Street Preachers")
  end

  def test_song_title()
    assert_equal("Motorcycle emptiness", @song1.title)
  end

  def test_song_artist()
    assert_equal("Manic Street Preachers", @song1.artist)
  end


end
