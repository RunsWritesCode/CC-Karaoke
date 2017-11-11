class Guest
  attr_accessor :name, :money, :fav_song

  def initialize(name, money, fav_song)
    @name = name
    @money = money
    @fav_song = fav_song
  end

  def guest_name(name)
    @guest.name
  end

  def celebrate(room)
    return if !room.is_favourite_song?(self.fav_song)
    cheer()
  end

  def cheer
    return "I love that song!"
  end


end
